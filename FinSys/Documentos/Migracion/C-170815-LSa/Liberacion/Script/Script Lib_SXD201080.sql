

----------------- FINSYS HEB_Carga ControlEntregas---------------------------

USE DBSTG_INT
GO

BEGIN
   IF NOT EXISTS (select * from controlentregas where procesoid = 229 and tablaid in (51,53,55,56,57,58,60,61,64,65,68))
   BEGIN
       insert into ControlEntregas (tablaid,
tabladesc,
procesoid,
sucursal,
Llave,
conexionsrc,
conexiontgt,
estatus,
activo,
condicion,
CampoCondicionExtra,
frecuencia,
intentos,
CargaIni,
Activo_Bkp)
	 values (51,'HEB_ANALISIS_DIARIO',229,1117,'PROCESS_DATE,PRD_LVL_NUMBER,TRANS_DATE,ORG_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,3,0,3),
			(53,'HEB_DESCTONODEVOLUCION',229,1117,'RCV_SESSION_ID,PMG_PO_NUMBER,PRD_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,3),
			(55,'HEB_TEMPDEVOLUCIONES',229,1117,'PROCESS_DATE,RTV_NUMBER,PRD_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,5,0,3),
			(56,'HEB_INGRESOSCOMERCIALES',229,1117,'BATCH_NUMBER,RBM_CHP_TECH_KEY,PRD_LVL_NUMBER, ORG_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,3),
			(57,'HEB_TEMPMERMA',229,1117,'PROCESS_DATE,TRANS_SESSION,PRD_LVL_NUMBER, ORG_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,3),
			(58,'HEB_TEMPMERMA2',229,1117,'PROCESS_DATE,TRANS_SESSION,PRD_LVL_NUMBER,ORG_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,4,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,4),
			(60,'HEB_TEMPMERMA3',229,1117,'PROCESS_DATE,TRANS_SESSION,TRANS_SEQUENCE','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,4,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,4),
			(61,'HEB_TempRebIncPermanentes',229,1117,'PROCESS_DATE,PRD_LVL_NUMBER,TRANS_SESSION,ORG_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,3),
			(64,'HEB_TRANSFERENCIAD_DIARIO',229,1117,'ENTRY_DATE,BATCH_NUMBER,SEQ_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1,ORG_LVL_NUMBER',1140,1,0,3),
			(65,'HEB_AJUSTEDECOMPRADETALLISTA',229,1117,'TRANS_SESSION,RCV_SESSION_ID,PRD_LVL_NUMBER_5,PMG_PO_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,3),
			(68,'HEB_TempRebajas',229,1117,'PROCESS_DATE,PRD_LVL_NUMBER,ORG_LVL_NUMBER','SRD201080_DBSTG_INT','SRD201117_DBFINSYS',0,3,'and download_date_1 = (select max(download_date_1) from $$Tabla)','DOWNLOAD_DATE_1',1140,1,0,3)
   END
END