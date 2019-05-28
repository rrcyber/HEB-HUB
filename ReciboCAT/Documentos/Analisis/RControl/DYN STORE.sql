USE [INTERFASE]
GO
/****** Object:  StoredProcedure [dbo].[FillRecEncayDet]    Script Date: 06/11/2017 16:27:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[FillRecEncayDet]

as

set nocount on

--Version 2.0
--Writed by: JAPA 
--Date: 20120218 1630 HRS
--Project: Estabilización M3
--Objetive: Llena ReciboEncabezado y ReciboDetalle para la confirmacion de la OC en DYL
--Involved Tables Source: po_recibo
--Involved Tables to Write: ReciboEncabezado, ReciboDetalle 
--Avg. Execution Time: 8 Segundos, procesando 209,378 registros

 /********************************************************************************************************   
 ** Date:      19-Abril-2012     
 ** Author:    Alfonso Luna 
 ** Proiect:   Reingeniería Recibo Exe 
 ** Desc:      Genereción de ReciboEncabezado y Recibo Detalle en D&L    
 ********************************************************************************************************/   
	
declare
		 @w_sucursalmexico	smallint
		,@sp				varchar(250)
		,@ifecha			int
		,@error				int
	
set @ifecha = convert(varchar(8), getdate(), 112)

/******* Obtiene Centro de Distribucion ****/
exec spCreaCallPrimario 2160, 2, 'SpSelBodegaSecosDC', @sp OUT
exec @sp @w_sucursalmexico OUT

create table #tmppo_recibo(
 dc_id					int			not null
,whse_id				int			not null
,purchase_order_number	char(18)	not null
,vendor					char(10)	not null
,receipt_number			int			not null
,product				char(18)	not null
,upc					numeric(18, 0)  null
,catch_weight			decimal(9, 2) not null
,qty_received			int			not null
,unit_ship_case			int			not null)

insert into #tmppo_recibo(
					 dc_id
					,whse_id
					,purchase_order_number
					,vendor
					,receipt_number
					,product
					,upc
					,catch_weight
					,qty_received
					,unit_ship_case)
select	 dc_id
		,whse_id
		,purchase_order_number
		,vendor
		,receipt_number
		,product
		,upc
		,catch_weight
		,qty_received
		,unit_ship_case	
from	dbo.po_recibo
where	eai_processflag = 'N'

begin tran
	--Inserta el Recibo Encabezado
	insert into bddis.dbo.reciboencabezado(
					 fae_proveedor
					,fae_depto
					,fae_factura 
					,fae_sucursal
					,fae_chofer
					,fae_ordencompra
					,fae_totalcantida
					,fae_costobruto
					,fae_iva	
					,fae_ieps
					,fae_estado
					,fae_fecha
					,fae_origcop
					,fae_total
					,fae_feing
					,fae_folio
					,fae_usuario
					,fae_placas)
	select	 vendor
			,0
			,'R' + cast(receipt_number as char(11))
			,@w_sucursalmexico
			,''
			,purchase_order_number
			,0
			,0
			,0
			,0
			,'4'
			,@ifecha
			,''
			,0
			,@ifecha
			,receipt_number
			,'RECIBEXE'
			,'FAE_PLACAS'
	from	#tmppo_recibo
	group by vendor
			,receipt_number
			,purchase_order_number
			
	set @error = @@error
	if @error <> 0 goto error

	--Inserta el Recibodetalle
	insert into bddis.dbo.recibodetalle(
					 fad_proveedor
					,fad_factura
					,fad_upc
					,fad_sucursal
					,fad_articulo
					,fad_cantida)
	select	 vendor
			,'R' + cast(receipt_number as char(11))
			,upc
			,@w_sucursalmexico
			,product
			,case
					when catch_weight > 0 then catch_weight 
					else qty_received
			 end
	from	#tmppo_recibo

	set @error = @@error
	if @error <> 0 goto error	

	--Actualiza a Y los registros insertados
	update	b
	set		eai_processflag = 'Y'
	from	#tmppo_recibo a inner join
			dbo.po_recibo b		on b.dc_id = a.dc_id
								and b.whse_id = a.whse_id
								and b.purchase_order_number = a.purchase_order_number
								and b.product = a.product
								and b.unit_ship_case = a.unit_ship_case
	where	b.eai_processflag = 'N'
								
	set @error = @@error
	if @error <> 0 goto error	

commit tran

error:
	IF @error <> 0 rollback tran
	
drop table #tmppo_recibo

set nocount off

