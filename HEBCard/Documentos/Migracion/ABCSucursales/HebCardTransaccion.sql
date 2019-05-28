USE [DBTIB]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HebCardTransaccion]') AND type = 'SO')
DROP SEQUENCE [dbo].[HebCardTransaccion]
GO

CREATE SEQUENCE [dbo].[HebCardTransaccion]
    AS [int]  
    START WITH 1  
    INCREMENT BY 1  
    MINVALUE 1 
    MAXVALUE 999999
    CYCLE
    CACHE 1000
GO