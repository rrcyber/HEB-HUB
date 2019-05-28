use dbstg_int
go 
----  Para cpntrol_entregas
declare @tablaid	int, @tabladesc	varchar(100) ,	@procesoid	int,		 @sucursal	int
, @tablatgt	varchar(100),	 @Llave	varchar(300) ,		@conexionsrc	varchar(100) , @conexiontgt	varchar(100) 
, @estatus	int,		 @activo	int,		@condicion	varchar(1000),	 @frecuencia	int
, @intentos	int,		 @fechaini	datetime,	@fechafin	datetime,	 @Activo_Bkp	int
, @condicionsqltrans	varchar(500)

-----  para ControlEntregas
,  @condiciontgt varchar(500),				@CampoCondicionExtra varchar(500),	@tablasrc varchar(500)
,  @CampoCondicionExtraTgt varchar(500),	@CargaIni int,						@camposexcluidos varchar(500)
,  @Llavetgt varchar(100)

set  @procesoid = 229					---  ProcesoId de  auditorias 	  
set  @sucursal	= 1117					---  sUCURSAL DE SERVIDOR DE ENTREGA 
set  @tablatgt	= NULL
SET  @conexionsrc = 'SRD201080_DBSTG_INT'	--- 
SET  @conexiontgt = 'SRD201117_DBFINSYS'	----  VALIDAR EN EK DESTINO SDD201010 **
SET  @estatus	= 0
SET  @intentos	= 1 
SET	 @fechaini	= GETDATE()-1
SET  @fechafin	= GETDATE()-1
SET  @condicionsqltrans= NULL
SET  @activo	= 3				---  No. de target creado con el cambio 
set  @Activo_Bkp = 3			---  No. de target creado con el cambio 

----   cONTROLeNTREGAS
set @Llavetgt = null
set @condiciontgt = null
set @CampoCondicionExtraTgt = null
set @CargaIni = 0
set @camposexcluidos = null

 
 /*******************************************************************/
 /***** CAMBIAR LOS VALORES DE LAS TABLAS    ************************/
 /*******************************************************************/
set  @tablaid =	63			
set  @tabladesc = 'HEB_TempTransf'		---  
SET	 @frecuencia = 60
SET  @Llave	 = 'TRF_CLOSE_DATE,TRF_TECH_KEY,PRD_LVL_NUMBER,TRF_NUMBER'
SET  @condicion	= 'and download_date_1 = (select max(download_date_1) from $$Tabla)'
SET  @activo	= 3
set  @Activo_Bkp = 3			---  No. de target creado con el cambio 


 
	 ----delete FROM	Control_entregas 
		----		where	tabladesc = @tabladesc
		----		and		tablaid = @tablaid
		----		and		procesoid= @procesoid


 
IF NOT EXISTS(SELECT * 
				FROM	Control_Entregas 
				where	tabladesc = @tabladesc
				and		tablaid = @tablaid
				AND		CONEXIONSRC = @conexionsrc 
				and		procesoid= @procesoid) 
BEGIN 

	insert into control_entregas
	select @tablaid TABLAiD, @tabladesc  TABLA_dESC, @procesoid procesoid,@sucursal sucursal, @tablatgt tablatgt,@Llave  LLAVE,@conexionsrc conexionsrc,
	@conexiontgt  conexiontgt, @estatus estatus, @activo activo, @condicion condicion,@frecuencia, @intentos intentos,@fechaini fechaini, @fechaini fechafin,
	@Activo_Bkp Activo_Bkp,  @condicionsqltrans condicionsqltrans 
	from control_entregas
	where tabladesc = @tabladesc
	--and		activo = 2
	and		tablaid = @tablaid
	and sucursal =1010			--  SE USA COMO BASE EL REGISTRO DE:  OSUCU_HEBANCO
	/*  SE USA COMO BASE EL REGISTRO DE:  OSUCU_HEBANCO
	*/

eND 

 
 /*******************************************************************/
 /***** CAMBIAR LOS VALORES DE LAS TABLAS    ************************/
 /*******************************************************************/
set  @tablaid =	67			
set  @tabladesc = 'Heb_Itf'		---  
SET	 @frecuencia = 1140
SET  @Llave	 = 'PHY_PST_DATE,PHY_CNTRL_NUM,PRD_LVL_NUMBER, ORG_LVL_NUMBER'
SET  @condicion	= 'and download_date_1 = (select max(download_date_1) from $$Tabla)'
SET  @activo	= 3
set  @Activo_Bkp = 3			---  No. de target creado con el cambio 

 
	 --delete FROM	Control_entregas 
		--		where	tabladesc = @tabladesc
		--		and		tablaid = @tablaid
		--		and		procesoid= @procesoid

IF NOT EXISTS(SELECT * 
				FROM	control_entregas 
				where	tabladesc = @tabladesc
				and		tablaid = @tablaid
				and		procesoid= @procesoid) 
BEGIN 

	insert into control_entregas
	select @tablaid TABLAiD, @tabladesc  TABLA_dESC, @procesoid procesoid,@sucursal sucursal, @tablatgt tablatgt,@Llave  LLAVE,@conexionsrc conexionsrc,
	@conexiontgt  conexiontgt, @estatus estatus, @activo activo, @condicion condicion,@frecuencia, @intentos intentos,@fechaini fechaini, @fechaini fechafin,
	@Activo_Bkp Activo_Bkp,  @condicionsqltrans condicionsqltrans 
	from control_entregas
	where	tabladesc = @tabladesc
	and		tablaid = @tablaid
	and sucursal =1010			--  SE USA COMO BASE EL REGISTRO DE:  OSUCU_HEBANCO
	/*  SE USA COMO BASE EL REGISTRO DE:  OSUCU_HEBANCO
	*/

eND 


 
 /*******************************************************************/
 /***** CAMBIAR LOS VALORES DE LAS TABLAS    ************************/
 /*******************************************************************/
set  @tablaid =	59			
set  @tabladesc = 'HEB_TempAjusteXTF'		---  
SET	 @frecuencia = 60
SET  @Llave	 = 'PROCESS_DATE,PRD_LVL_NUMBER, ORG_LVL_NUMBER'
SET  @condicion	= 'and download_date_1 = (select max(download_date_1) from $$Tabla)'
SET  @activo	= 3
set  @Activo_Bkp = 3			---  No. de target creado con el cambio 

--	--
--	-- delete FROM	Control_entregas where	tabladesc = @tabladesc	and		tablaid = @tablaid	and		procesoid= @procesoid
--	--
IF NOT EXISTS(SELECT * 
				FROM	control_entregas 
				where	tabladesc = @tabladesc
				and		tablaid = @tablaid
				and		procesoid= @procesoid) 
BEGIN 

	insert into control_entregas
	select @tablaid TABLAiD, @tabladesc  TABLA_dESC, @procesoid procesoid,@sucursal sucursal, @tablatgt tablatgt,@Llave  LLAVE,@conexionsrc conexionsrc,
	@conexiontgt  conexiontgt, @estatus estatus, @activo activo, @condicion condicion,@frecuencia, @intentos intentos,@fechaini fechaini, @fechaini fechafin,
	@Activo_Bkp Activo_Bkp,  @condicionsqltrans condicionsqltrans 
	from control_entregas
	where	tabladesc = @tabladesc
	and		tablaid = @tablaid
	and sucursal =1010			--  SE USA COMO BASE EL REGISTRO DE:  OSUCU_HEBANCO
	/*  SE USA COMO BASE EL REGISTRO DE:  OSUCU_HEBANCO
	*/

eND 


SELECT * FROM control_Entregas	where     PROCESOID = 229  and tabladesc like 'HEB_%' ORDER  BY tablaid

