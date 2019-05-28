

----------------- FINSYS HEB_CargaComprasRecibidas---------------------------

USE DBSTG_INT
GO

BEGIN
   IF NOT EXISTS (SELECT * FROM merc_parametrosproceso 
                   WHERE Proceso = 'HEB_CargaComprasRecibidas'                   )
   BEGIN
       insert into merc_parametrosproceso (Proceso, consecutivo, parametro)values('HEB_CargaComprasRecibidas',1,'$$Dias=1')
   END
END

