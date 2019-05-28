USE [INTERFASE]
GO
/****** Object:  StoredProcedure [dbo].[ValidaReciboEXE]    Script Date: 24/11/2017 10:35:28 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[ValidaReciboEXE]

	@ValidaDc_Recibo		bit=1
	
--Codigos de Error tabla exevrerror
--0.-OC en po_close y no en po_receipt
--1.-Articulo en po_receipt no en dc_recibo
--2.-Diferencia en Kg po_receipt vs dc_recibo
--3.-Diferencia en Cajas po_receipt vs dc_recibo
--4.-Articulo en dc_recibo y no en PO_Receipt
--5.-Articulo en po_receipt y no en exe_sdipmgdte
--6.-Articulo recibido en kg po_receipt y sin marca de Kg en exe_sdipmgdte
--7.-Articulo con valor de case pack null en exe_sdipmgdte
--8.-Articulo recibido en cajas en po_receipt y con marca de Kg en exe_sdipmgdte

--Version 2.1
--Writed by: JAPA 
--Date: 20120821 1919 HRS
--ID: 1
--		SOLO CONSIDERARA LO QUE ESTE LISTO PARA EL PROCESO
--		ES DECIR LO QUE TENGA PO_CLOSE Y PO_RECEIPT CON AL MENOS 
--		1 REGISTRO EN LA SEGUNDA TABLA CON RECEIPT_NUMBER <> 0
--ID:2
--		SE ELIMINO TODO LO RELACIONADO CON EL ENVIO DE CORREO

--Version Service Pack 2.0
--Writed by: JAPA 
--Date: 20120730 1727 HRS
--  >Se elimino el codigo comentarizado
--  >Se elimino el uso del nolock excepto para la tabla dbo.exe_sdipmgdte
--  >Se dejo de utilizar la tabla dc_recibo se reemplazo por una temporal

--Version 1.0
--Writed by: JAPA 
--Date: 20120215 2112 HRS
--Project: Estabilización M3
--Objetive: Validar el recibo que viene de EXE, llenar las tablas de import a PMM y comunicar el recibo a DYL
--Involved Tables Source: po_close, po_receipt, exe_sdipmgdte, dc_recibo
--Involved Tables to Write: exevrerror, po_recibo_folio, po_recibo, exe_imp_sdircvhdi, exe_imp_sdircvdti
--Avg. Execution Time: 24 Segundos, procesando 200,625 registros

as

set nocount on

declare
		 @error		int
		,@idsess	int
		,@fini		char(10)
		,@finiII	char(10)
		
set @fini = convert(varchar(8),dateadd(dd, -7,  getdate()), 112)
set @finiII = convert(varchar(8),dateadd(dd, -8,  getdate()), 112)	
select @idsess = max(idsess) from dbo.exevrerror
if @idsess is null set @idsess = 0 else set @idsess = @idsess + 1

create table #tmppo_receipt(
 dc_id					int			NOT NULL
,whse_id				int			NOT NULL
,purchase_order_number	char(18)	NOT NULL
,product				char(18)	NOT NULL
,rct_qty				int			NOT NULL
,kg						decimal(9,2) NOT NULL
,unit_ship_case			int			NOT NULL)

create table #tmpdc_recibo(
 dc_id					int			NOT NULL
,whse_id				int			NOT NULL
,po_id					char(18)	NOT NULL
,prod_id				char(18)	NOT NULL
,unit_ship_cse			int			NOT NULL
--JAPA 20120730 1727 HRS
--SE AGREGARON 2 COLUMNAS A LA TABLA
,catch_wgt				decimal(9, 2) NOT NULL
,rct_qty				int			NOT NULL)

create table #tmppo_close(
 dc_id					int			NOT NULL
,whse_id				int			NOT NULL
,purchase_order_number	char(18)	NOT NULL)

create table #tmpreceiptini(
 dc_id					int			NOT NULL
,whse_id				int			NOT NULL
,purchase_order_number	char(18)	NOT NULL
,product				char(18)	NOT NULL
,rct_qty				int			NOT NULL
,kg						decimal(9,2) NOT NULL
,unit_ship_case			int			NOT NULL
,receipt_number			int			NOT NULL)

create table #tmpexevrerror(
idsess	int				NOT NULL,
errid	smallint		NOT NULL,
dc		int				NOT NULL,
wh		int				NOT NULL,
oc		char(18)		NOT NULL,
sku		char(18)		NOT NULL,
usc		int				NOT NULL,
freg	datetime		NOT NULL)

create clustered index idx_tmppo_receipt on #tmppo_receipt 
(dc_id ASC,
 whse_id ASC,
 purchase_order_number ASC,
 product ASC,
 unit_ship_case ASC)
 
 create clustered index idx_tmpdc_recibo on #tmpdc_recibo 
(dc_id ASC,
 whse_id ASC,
 po_id ASC,
 prod_id ASC,
 unit_ship_cse ASC)
 
create clustered index idx_tmppo_close on #tmppo_close 
( dc_id ASC
 ,whse_id ASC
 ,purchase_order_number ASC ) 
 
 create clustered index idx_tmpreceiptini on #tmpreceiptini 
( dc_id ASC
 ,whse_id ASC
 ,purchase_order_number ASC ) 
 
 create clustered index idx_tmpexevrerror on #tmpexevrerror 
(	dc ASC,
	wh ASC,
	oc ASC)
	
 create index idx_tmpexevrerrorII on #tmpexevrerror 
(	errid ASC,
	dc ASC,
	wh ASC,
	oc ASC,
	sku ASC,
	usc ASC)
 
--LLENA TABLA TEMPORAL #tmppo_close CON FILTRO DE ESTATUS Y FECHA
insert into #tmppo_close
select	  dc_id
		, whse_id
		, purchase_order_number 
from	dbo.po_close 
where	load_date >= @fini
		and eai_processflag in('N', 'X')
group by  dc_id
		, whse_id
		, purchase_order_number 

--LLENA TABLA TEMPORAL #tmpreceiptini CON FILTRO DE ESTATUS, FECHA Y RECEPCION
insert into #tmpreceiptini
select	  dc_id
		, whse_id
		, purchase_order_number
		, product
		, sum(flow_thru_rec_qty + qty_received) as rct_qty
		, sum(catch_weight) as kg
		, unit_ship_case 
		, receipt_number
from	dbo.po_receipt 
where	load_date >= @finiII
		and eai_processflag in('N', 'X')
group by  dc_id
		, whse_id
		, purchase_order_number
		, product
		, unit_ship_case 
		, receipt_number

--LLENO LA TABLA FINAL #tmppo_receipt CON LA QUE SE REALIZARAN TODOS LAS VALIDACIONES
insert into #tmppo_receipt
select	  a.dc_id
		, a.whse_id
		, a.purchase_order_number
		, b.product
		, b.rct_qty
		, b.kg
		, b.unit_ship_case
from	#tmppo_close a		inner join 
		#tmpreceiptini b 		on b.dc_id = a.dc_id
								and b.whse_id = a.whse_id
								and b.purchase_order_number = a.purchase_order_number
where	b.receipt_number <> 0

--JAPA 20120730 1727 HRS
--SE UTILIZARA UNA TABLA TEMPORAL EN LUGAR DE LA FISICA

--ID: 1
insert into #tmpdc_recibo
select	 b.dc_id
		,b.whse_id 
		,b.po_id 
		,b.prod_id
		,b.unit_ship_cse
		,b.catch_wgt
		,b.rct_qty
from	(
		select distinct 
				 dc_id
				,whse_id
				,purchase_order_number
		from	#tmppo_receipt
		) a inner join
		dbo.dc_recibo b on b.dc_id = a.dc_id
						and b.whse_id = a.whse_id
						and b.po_id = a.purchase_order_number
where	b.eai_processflag in('N', 'X')

if @ValidaDc_Recibo = 1
begin
	
	--1.-Articulo en po_receipt no en dc_recibo
	insert into #tmpexevrerror(idsess, errid, dc, wh, oc, sku, usc, freg)
	select	@idsess, 1, a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case, getdate()
	from	#tmppo_receipt a left outer join
			#tmpdc_recibo b	    on b.dc_id = a.dc_id
								and b.whse_id = a.whse_id
								and	b.po_id = a.purchase_order_number
								and	b.prod_id = a.product
								and b.unit_ship_cse = a.unit_ship_case
	where	b.po_id is null
	group by a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case

	--2.-Diferencia en Kg po_receipt vs dc_recibo
	insert into #tmpexevrerror(idsess, errid, dc, wh, oc, sku, usc, freg)
	select	@idsess, 2, a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case, getdate()
	from	#tmppo_receipt a inner join
			#tmpdc_recibo b	     on b.dc_id = a.dc_id
								and b.whse_id = a.whse_id
								and	b.po_id = a.purchase_order_number
								and	b.prod_id = a.product
								and b.unit_ship_cse = a.unit_ship_case
	where	a.kg <> b.catch_wgt
	group by a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case

	--3.-Diferencia en Cajas po_receipt vs dc_recibo
	insert into #tmpexevrerror(idsess, errid, dc, wh, oc, sku, usc, freg)
	select	@idsess, 3, a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case, getdate()
	from	#tmppo_receipt a inner join
			#tmpdc_recibo b	     on b.dc_id = a.dc_id
								and b.whse_id = a.whse_id
								and	b.po_id = a.purchase_order_number
								and	b.prod_id = a.product
								and b.unit_ship_cse = a.unit_ship_case
	where	a.kg = 0 
			and a.rct_qty <> b.rct_qty
	group by a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case

	--4.-Articulo en dc_recibo y no en PO_Receipt
	insert into #tmpexevrerror(idsess, errid, dc, wh, oc, sku, usc, freg)
	select	@idsess, 4, a.dc_id, a.whse_id, a.po_id, a.prod_id, a.unit_ship_cse, getdate()
	from	#tmpdc_recibo a	 left outer join
			#tmppo_receipt b				on b.dc_id = a.dc_id
											and b.whse_id = a.whse_id
											and	b.purchase_order_number = a.po_id
											and	b.product = a.prod_id
											and b.unit_ship_case = a.unit_ship_cse
	where	b.purchase_order_number is null
	group by  a.dc_id, a.whse_id, a.po_id, a.prod_id, a.unit_ship_cse
end

--5.-Articulo en po_receipt y no en exe_sdipmgdte
insert into #tmpexevrerror(idsess, errid, dc, wh, oc, sku, usc, freg)
select	@idsess, 5, a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case, getdate()
from	#tmppo_receipt a left outer join
		dbo.exe_sdipmgdte b with(nolock) on b.Dc_Org_Lvl_Number = a.dc_id
							and b.Whse_Org_Lvl_Number = a.whse_id
							and	b.Pmg_Po_Number = a.purchase_order_number
							and	b.Prd_Lvl_Number = a.product
							and b.sll_units_per_inner = a.unit_ship_case
where	b.Pmg_Po_Number is null
group by a.dc_id, a.whse_id, a.purchase_order_number, a.product, a.unit_ship_case

--elimina los registros con error de #tmppo_receipt
delete	a
from	#tmppo_receipt a inner join
		#tmpexevrerror b		on b.dc = a.dc_id
								and b.wh = a.whse_id
								and	 b.oc = a.purchase_order_number

if exists(select top 1 dc_id from #tmppo_receipt) 
or exists(select top 1 idsess from #tmpexevrerror) 
begin
	begin tran
			
			--actualiza	po_close a X para marcar los registros con error				
			update	b
			set		eai_processflag = 'X'
			from	#tmpexevrerror a inner join
					dbo.po_close b		on b.dc_id = a.dc
										and b.whse_id = a.wh
										and b.purchase_order_number = a.oc
			where	b.eai_processflag = 'N'
										
			set @error = @@error
			if @error <> 0 goto error
			
			--actualiza	po_receipt a X para marcar los registros con error							
			update	b
			set		eai_processflag = 'X'
			from	#tmpexevrerror a inner join
					dbo.po_receipt b	on b.dc_id = a.dc
										and b.whse_id = a.wh
										and b.purchase_order_number = a.oc
			where	b.eai_processflag = 'N'
			
			set @error = @@error
			if @error <> 0 goto error
		
			--actualiza	dc_recibo a X para marcar los registros con error							
			update	b
			set		eai_processflag = 'X'
			from	#tmpexevrerror a inner join
					dbo.dc_recibo b		on b.dc_id = a.dc
										and b.whse_id = a.wh
										and b.po_id = a.oc
			where	b.eai_processflag = 'N'
											
			set @error = @@error
			if @error <> 0 goto error			
			
			--elimina los errores de OC que ya existan en la tabla de error			
			delete	a 
			from	#tmpexevrerror a inner join
					dbo.exevrerror b		on b.errid = a.errid
											and	b.dc = a.dc
											and	b.wh = a.wh
											and	b.oc = a.oc
											and	b.sku = a.sku
											and	b.usc = a.usc
											
			set @error = @@error
			if @error <> 0 goto error
		
			--llena la tabla fisia de errores exevrerror
			insert into dbo.exevrerror(idsess, errid, dc, wh, oc, sku, usc, freg)
			select	idsess, errid, dc, wh, oc, sku, usc, freg
			from	#tmpexevrerror
					
			set @error = @@error
			if @error <> 0 goto error
			
			--inserta en la tabla de folios para generar el de los que estan correctos
			insert into dbo.po_recibo_folio(
							  dc_id
							, whse_id
							, purchase_order_number)
			select	  dc_id
					, whse_id
					, purchase_order_number 
			from	#tmppo_receipt
			group by dc_id, whse_id, purchase_order_number
			
			set @error = @@error
			if @error <> 0 goto error
			
			--inserta el po_recibo
			insert into dbo.po_recibo(
								  dc_id
								, whse_id
								, purchase_order_number
								, vendor
								, receipt_number
								, product
								, upc
								, vpc_case_pack_id
								, catch_weight
								, qty_received
								, unit_ship_case
								, eai_processflag
								, load_date)
			select    a.dc_id
					, a.whse_id
					, a.purchase_order_number
					, c.Vendor_Number
					, b.receipt_number
					, a.product
					, c.Prd_Upc
					, c.Vpc_Case_Pack_Id
					, a.kg * 100.0
					, (a.rct_qty * c.dec_sll_units_per_inner) * 100.0
					, c.dec_sll_units_per_inner * 100.0
					, 'N'
					, getdate()
			from	#tmppo_receipt a inner join
					dbo.po_recibo_folio b	 on b.dc_id = a.dc_id
											and b.whse_id = a.whse_id
											and b.purchase_order_number = a.purchase_order_number 
									 inner join
					dbo.exe_sdipmgdte c	with(nolock) on c.Dc_Org_Lvl_Number = a.dc_id
								and c.Whse_Org_Lvl_Number = a.whse_id
								and	c.Pmg_Po_Number = a.purchase_order_number
								and	c.Prd_Lvl_Number = a.product
								and c.sll_units_per_inner = a.unit_ship_case
			
			set @error = @@error
			if @error <> 0 goto error		
			
			--inserta el encabezado de la integracion de recibo a pmm exe_imp_sdircvhdi				
			insert into dbo.exe_imp_sdircvhdi(
									  rcv_session_id
									, tran_type
									, org_lvl_number
									, rcv_date_ses_opn
									, rcv_session_sts
                                    , thread_id
									, enviado_inicio
									, fecha_alta
									, fecha_modificacion)					
			select	distinct	  
						  '2160' + cast(b.receipt_number as varchar(10))
						, 'A'
						, cast(a.dc_id as varchar(2)) + 
								case 
										when len(cast(a.whse_id as varchar(2))) = 1 then '0' + cast(a.whse_id as varchar(2)) 
										else cast(a.whse_id as varchar(2)) 
								end
						, cast(convert(varchar(10), getdate(), 112) as datetime)
                        , 1
                        , 1
						, 0
						, getdate()
						, getdate()
			from	#tmppo_receipt a inner join
					dbo.po_recibo_folio b	 on b.dc_id = a.dc_id
											and b.whse_id = a.whse_id
											and b.purchase_order_number = a.purchase_order_number 
											
			set @error = @@error
			if @error <> 0 goto error
	
			--inserta el detalle de la integracion de recibo a pmm exe_imp_sdircvdti
			insert into dbo.exe_imp_sdircvdti(
							  tran_type
							, rcv_session_id
							, rcv_doc_number
							, rcv_ccs_id
							, bas_user_name
							, pmg_po_number
							, pmg_dtl_tech_key
							, pmg_seq_num
							, vpc_case_pack_id
							, prd_lvl_number
							, prd_upc
							, rcv_sub_prd_flg
							, rcv_sub_prd
							, rcv_sell_qty
							, rcv_case_qty
							, rcv_cost
							, rcv_date
							, rcv_rt_qty
							, rcv_qc_qty
							, rcv_os_exp
							, rcv_qc_exp
							, rcv_rt_exp
							, rcv_ev_exp
							, rcv_aud_exp
							, date_created
							, download_date_1
							, download_date_2
							, rcv_inv_num
							, vendor_number
							, vpc_shp_point
							, curr_code
							, rcv_weight
							, rcv_weight_uom
							, substituted_prd_number
							, rcv_loose_qty
							, subst_vpc_case_id
							, subst_prd_upc
							, rcv_inners
							, inner_pk_tech_key
							, net_cost_flag
							, enviado_inicio
							, fecha_alta
							, fecha_modificacion)
			select	  'A'
					, '2160' + cast(b.receipt_number as varchar(10))
					, 'R' + cast(b.receipt_number as varchar(10))
					, null
					, 'Sistemas - Integraciones'
					, ltrim(rtrim(a.purchase_order_number))
					, c.pmg_dtl_tech_key
					, 0
					, c.vpc_case_pack_id
					, ltrim(rtrim(a.product))
					, c.prd_upc
					, 'F'
					, null
					, case 
						   when a.kg > 0 or c.vpc_case_wgt_uom = 'KG' then null else a.rct_qty * c.dec_sll_units_per_inner 
					  end
					, case when a.kg > 0 or c.vpc_case_wgt_uom = 'KG' then a.rct_qty else null end
					, null
					, cast(convert(varchar(10), getdate(), 112) as datetime)
					, null
					, null
					, null
					, null
					, null
					, null
					, null
					, cast(convert(varchar(10), getdate(), 112) as datetime)
					, null
					, null
					, null
					, ltrim(rtrim(c.vendor_number))
					, null
					, null
					, case 
							when a.kg > 0 then a.kg 
							when a.kg = 0 and c.vpc_case_wgt_uom = 'KG' then a.rct_qty * c.dec_sll_units_per_inner
							else null 
					  end
					, case when a.kg > 0 or c.vpc_case_wgt_uom = 'KG' then c.vpc_case_wgt_uom else null end
					, null
					, null
					, null
					, null
					, null
					, null
					, null
					, 0
					, getdate()
					, getdate()
			from	#tmppo_receipt a inner join
					dbo.po_recibo_folio b	 on b.dc_id = a.dc_id
											and b.whse_id = a.whse_id
											and b.purchase_order_number = a.purchase_order_number 
									 inner join
					dbo.exe_sdipmgdte c	with(nolock) on c.Dc_Org_Lvl_Number = a.dc_id
								and c.Whse_Org_Lvl_Number = a.whse_id
								and	c.Pmg_Po_Number = a.purchase_order_number
								and	c.Prd_Lvl_Number = a.product
								and c.sll_units_per_inner = a.unit_ship_case
			
			set @error = @@error
			if @error <> 0 goto error
			
			--actualiza los registros correctamente generados en po_close
			update	b
			set		eai_processflag = 'Y'
			from	#tmppo_receipt a inner join
					dbo.po_close b			on b.dc_id = a.dc_id
										and b.whse_id = a.whse_id
										and b.purchase_order_number = a.purchase_order_number
										
			set @error = @@error
			if @error <> 0 goto error
			
			--actualiza los registros correctamente generados en po_receipt						
			update	b
			set		eai_processflag = 'Y'
			from	#tmppo_receipt a inner join
					dbo.po_receipt b	on b.dc_id = a.dc_id
										and b.whse_id = a.whse_id
										and b.purchase_order_number = a.purchase_order_number
											
			set @error = @@error
			if @error <> 0 goto error
			
			--actualiza los registros correctamente generados en dc_recibo						
			update	b
			set		eai_processflag = 'Y'
			from	#tmppo_receipt a inner join
					dbo.dc_recibo b		on b.dc_id = a.dc_id
										and b.whse_id = a.whse_id
										and b.po_id = a.purchase_order_number
											
			set @error = @@error
			if @error <> 0 goto error

	commit tran
end

error:
	IF @error <> 0 rollback tran
	
drop table #tmppo_receipt
drop table #tmpexevrerror
drop table #tmppo_close
drop table #tmpreceiptini
drop table #tmpdc_recibo

set nocount off
