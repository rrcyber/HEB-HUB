select * from facturageneral
WHERE Folio = '971875'
--order by FechaEmision desc

select * from facturageneral 
where convert(varchar(10), FechaEmision, 120) <= convert(varchar(10), getdate()-2, 120)
order by FechaEmision desc

select * from Factura_RetailerHeader




--where Folio = '971875'


-- Campos en REPENC y FacturaGeneral son:
-- EIF_VERSION = VERSION, EIF_FOLIO = FOLIO, EIF_SERIE = SERIE, EIF_FECEMISION = FECHAEMISION, EIF_NOAPROB = NOAPROBACION
-- EIF_NOCERTIF = NOCERTIFICADO, EIF_NOEMISOR = EMISORID, 



select * from Factura_RetailerHeader
where Enc_FacturaID = '1728447'

select * from facturageneral
where FacturaID = '1728447'




SELECT * FROM FacturasProvSinOC
WHERE FACTURAID = '1728447'

SELECT * FROM CatHEBGLN

SELECT * FROM OORCO


-- OBTENEMOS TODAS LAS FACTURAS QUE HAN CAIDO EN EL CANAL(SRD2010177) EN LOS ULTIMOS 7 DIAS
SELECT  FacturaID, Folio EIF_FOLIO, Serie EIF_SERIE, FechaEmision EIF_FECEMISION, EmisorID EIF_PROVEEDOR, 
GLN_IDSUC EIF_SUCURSAL, Enc_a31_OI_ReferenceIdentification EIF_OC, ORC_DEPTO EIF_DEPTO, Version, NoAprobacion, NoCertificado,
SubTotal, IsNull(Descuento,0) As Descuento, IsNull(TasaIVA,0) As TasaIVA,  IsNull(ImporteIVA,0) As ImporteIVA, IsNull(TotalIEPS,0) As TotalIEPS
, Total, ISNULL(Moneda, 'MX') As Moneda, TipoRecXMLId
from FacturaGeneral WITH(NOLOCK)
JOIN Factura_RetailerHeader WITH(NOLOCK) ON FacturaID = Enc_FacturaID
JOIN CatHEBGLN WITH(NOLOCK) ON Enc_a81_ST_GLN = GLN_GLNCODIGO
JOIN OORCO WITH(NOLOCK) ON Enc_a31_OI_ReferenceIdentification = ORC_ORDEN 
AND Enc_a72_S_AlternatePartyIdentification = ORC_PROVEEDOR 
JOIN OPROV WITH(NOLOCK) ON EmisorID = PRO_PROVEEDOR
WHERE CONVERT(VARCHAR(10), FechaEmision , 120) = CONVERT(VARCHAR(10), GETDATE(), 120) 
AND DATEDIFF(MINUTE, CAST(REPLACE(FECHAEMISION, 'T', ' ') AS TIME(0)) , CAST(GETDATE() AS TIME(0))) >= 59


select  FacturaID
from FacturaGeneral WITH(NOLOCK)

SELECT * FROM Factura_RetailerHeader
WHERE Enc_FacturaID = '1728447'

select * from Factura_RetailerDetail
where Det_FacturaID = '1728447'
--DE FECTURA RETAILERDETAIL OCUPO LOS CAMPOS DET_A152_LI_ALTERNATETRADEITEMIDENTIFICATION = DIFEAN13, DET_A1511_LI_TII_GTIN = DIF_SKUPROV, 
--DET_A1531_LI_TIDI_LONGTEXT = DIS_DESC, 

select * from facturageneral
WHERE Folio = '971875'
-- DE FACTURA GENERAL OCUPO LAS CAMPOS FOLIO = DIF_FOLIO, SERIE = DIF,SERIE, EMISORID = DIR_PROVEEDOR, 

SELECT * FROM CatHEBGLN
WHERE GLN_GLNCODIGO = '7504000225027'

SELECT * FROM OORCO
WHERE ORC_ORDEN = '52331422'





--CAMPOS SIN IDENTIFICAR DIF_SUCURSAL, DIF_EAN14= NULL, DIF_SKUHEB, 