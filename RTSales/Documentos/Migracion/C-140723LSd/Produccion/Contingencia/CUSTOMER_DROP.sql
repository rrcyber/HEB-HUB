USE [DBSTG]
GO
/****** Object:  Table [dbo].[CPE_CUST_GRP_CUSTOMER]    Script Date: 08/26/2014 08:40:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CPE_CUST_GRP_CUSTOMER]') AND type in (N'U'))
DROP TABLE [dbo].[CPE_CUST_GRP_CUSTOMER]
GO
