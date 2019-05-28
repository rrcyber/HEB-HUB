--PO
--la subconsulta se utiliza para saber la cantidad de ordenes a comunicar y la consulta completa es para el detalle
--de cuantos son los registros a insertar

 SELECT 
PMG_PO_NUMBER
FROM SDIPMGDTI
WHERE PMG_PO_NUMBER in (SELECT 		
PMG_PO_NUMBER
FROM SDIPMGHDI
WHERE SDIFLAG = 0
AND PO_TYPE IS NULL
AND CONVERT(VARCHAR(8),date_created, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112))
AND SDIFLAG = 0
AND CONVERT(VARCHAR(8),date_created, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112)
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
 
--la subconsulta se utiliza para saber la cantidad de recivos a comunicar y la consulta completa es para el detalle
--para saber cuantos son los registros a insertar, en el signo ? se coloca el numero de la sucursal
  
    SELECT
      RCV_SESSION_ID
FROM BDCMP.DBO.SDIRCVHDI 
WHERE RCV_SESSION_ID in (
SELECT folio
FROM BDCMP.DBO.MERC_BitacoraEventos
WHERE CONVERT(VARCHAR(8),fecha, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112)
AND sdi_flag = 0
AND sucursal = ?
and sdi = 'SDIRCVHDI'
)
AND SDIFLAG = 0

--RCV SDIRCVDTI
--la subconsulta se utiliza para saber la cantidad de recivos a comunicar y la consulta completa es para el detalle
--para saber cuantos son los registros a insertar, en el signo ? se coloca el numero de la sucursal

SELECT 
RCV_SESSION_ID      
FROM BDCMP.DBO.SDIRCVDTI
WHERE RCV_SESSION_ID IN
(
SELECT folio
FROM BDCMP.DBO.MERC_BitacoraEventos
WHERE CONVERT(VARCHAR(8),fecha, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112)
AND sdi_flag = 0
AND sucursal = ?
and sdi = 'SDIRCVHDI'
)
AND SDIFLAG = 0
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--TRF
--la subconsulta se utiliza para conoser la cantidad de tranferencias a comunicar y la consulta completa es para el detalle
--para saber cuantos son los registros a insertar en el signo ? se coloca el numero de la sucursal
SELECT 
CARTON_NUMBER
FROM bddis.dbo.SDITRFDTI
WHERE CARTON_NUMBER in (
SELECT folio
FROM BDCMP.dbo.MERC_BitacoraEventos
WHERE CONVERT(VARCHAR(8),fecha, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112)
AND sdi_flag = 0
AND sucursal = ?
and sdi = 'SDITRFDTI'
)
AND ACTION_CODE = '08'
AND SDIFLAG = 0
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--INV
--la subconsulta se utiliza para saber la cantidad de inventarios a comunicar y la consulta completa es para el detalle
--de cuantos son los registros a insertar
SELECT 
TRANS_REF,
TRANS_REF2
FROM bdinv.dbo.HEB_SDIINVADI
WHERE ((TRANS_REF IN (9071, 9101) AND 
TRANS_REF2 in (
SELECT folio
FROM BDCMP.dbo.MERC_BitacoraEventos
WHERE CONVERT(VARCHAR(8),fecha, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112)
AND sdi_flag = 0
AND sucursal = ?
and sdi = 'HEB_SDIINVADI'
)) 
OR 
(TRANS_REF in (
SELECT folio
FROM BDCMP.dbo.MERC_BitacoraEventos
WHERE CONVERT(VARCHAR(8),fecha, 112)  >= CONVERT(VARCHAR(8), GETDATE()-3, 112)
AND sdi_flag = 0
AND sucursal = ?
and sdi = 'HEB_SDIINVADI'
)))
AND SDIFLAG = 0
---------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------
--PHY
--la subconsulta se utiliza para saber la cantidad de tomas fisicas a comunicar y la consulta completa es para el detalle
--de cuantos son los registros a insertar
select CONTROL_NUMBER
from BDINV.DBO.sdiphydti where sdiflag = 0 and control_number in
(
SELECT control_number FROM BDINV.DBO.SDIPHYDTI 
WHERE SDIFLAG = 0 
)
