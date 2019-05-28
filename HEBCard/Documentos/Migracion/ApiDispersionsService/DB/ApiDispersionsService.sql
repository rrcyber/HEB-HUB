USE [DBTIB]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ApiDispersionsService]') AND type = 'SO')
DROP SEQUENCE [dbo].[ApiDispersionsService]
GO

CREATE SEQUENCE [dbo].[ApiDispersionsService]
    AS [int]  
    START WITH 1  
    INCREMENT BY 1  
    MINVALUE 1 
    MAXVALUE 999999
    CYCLE
    CACHE 1000
GO