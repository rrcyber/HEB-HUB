USE [DBSDI]
GO
/****** Object:  ForeignKey [FK_TIB_USER_GROUP_TIB_GROUP]    Script Date: 04/02/2014 12:44:19 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_GROUP]
GO
/****** Object:  ForeignKey [FK_TIB_USER_GROUP_TIB_USER]    Script Date: 04/02/2014 12:44:19 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_USER]
GO
/****** Object:  StoredProcedure [dbo].[SP_Purge_Tib_Log]    Script Date: 04/02/2014 12:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Purge_Tib_Log]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Purge_Tib_Log]
GO
/****** Object:  StoredProcedure [dbo].[SP_Purge_Tib_Log_Error]    Script Date: 04/02/2014 12:44:54 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Purge_Tib_Log_Error]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Purge_Tib_Log_Error]
GO
/****** Object:  Table [dbo].[TIB_USER_GROUP]    Script Date: 04/02/2014 12:44:19 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_GROUP]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_USER]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_USER_GROUP]
GO
/****** Object:  Table [dbo].[TIB_USER]    Script Date: 04/02/2014 12:44:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_USER]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_USER]
GO
/****** Object:  Table [dbo].[TIB_GROUP]    Script Date: 04/02/2014 12:44:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_GROUP]
GO
/****** Object:  Table [dbo].[TIB_LOG]    Script Date: 04/02/2014 12:44:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_LOG]
GO
/****** Object:  Table [dbo].[TIB_LOG_ERROR]    Script Date: 04/02/2014 12:44:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG_ERROR]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_LOG_ERROR]
GO
/****** Object:  Table [dbo].[TIB_PROCESS_CONTROL]    Script Date: 04/02/2014 12:44:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_PROCESS_CONTROL]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_PROCESS_CONTROL]
GO
/****** Object:  Table [dbo].[TIB_PROCESS_CONTROL]    Script Date: 04/02/2014 12:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_PROCESS_CONTROL]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIB_PROCESS_CONTROL](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SERVICE_NAME] [varchar](250) NULL,
	[PROCESS] [varchar](250) NULL,
	[VERTICAL] [varchar](250) NULL,
 CONSTRAINT [INDEX_PK_TIBPROCESSCONTROL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
GRANT SELECT ON [dbo].[TIB_PROCESS_CONTROL] TO PUBLIC
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIB_LOG_ERROR]    Script Date: 04/02/2014 12:44:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG_ERROR]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIB_LOG_ERROR](
	[RUN_ID] [int] IDENTITY(1,1) NOT NULL,
	[ERROR_DATE] [datetime] NULL,
	[SEVERITY] [varchar](50) NULL,
	[PROCESS] [varchar](250) NULL,
	[SERVICE_NAME] [varchar](250) NULL,
	[ERROR_CODE] [varchar](90) NULL,
	[DESCRIPTION_ERROR] [varchar](4000) NULL,
	[MESSAGE_ERROR] [text] NULL,
	[ATT1] [varchar](250) NULL,
	[ATT2] [varchar](250) NULL,
 CONSTRAINT [INDEX_PK_TIBLOGERROR] PRIMARY KEY CLUSTERED 
(
	[RUN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
GRANT SELECT ON [dbo].[TIB_LOG_ERROR] TO PUBLIC
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG_ERROR]') AND name = N'INDEX_ERROR_CODE')
CREATE NONCLUSTERED INDEX [INDEX_ERROR_CODE] ON [dbo].[TIB_LOG_ERROR] 
(
	[ERROR_CODE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG_ERROR]') AND name = N'INDEX_ERROR_DATE')
CREATE NONCLUSTERED INDEX [INDEX_ERROR_DATE] ON [dbo].[TIB_LOG_ERROR] 
(
	[ERROR_DATE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG_ERROR]') AND name = N'INDEX_SERVICE_NAME')
CREATE NONCLUSTERED INDEX [INDEX_SERVICE_NAME] ON [dbo].[TIB_LOG_ERROR] 
(
	[SERVICE_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIB_LOG]    Script Date: 04/02/2014 12:44:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIB_LOG](
	[RUN_ID] [int] IDENTITY(1,1) NOT NULL,
	[INTEGRATION_ID] [int] NULL,
	[INTEGRATION_NAME] [varchar](250) NULL,
	[INSTANCE_NAME] [varchar](250) NULL,
	[PROCESS_ID] [varchar](250) NULL,
	[RECORD_COUNT] [int] NULL,
	[RUN_DATE] [datetime] NULL
) ON [PRIMARY]
END
GO
GRANT SELECT ON [dbo].[TIB_LOG] TO PUBLIC
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG]') AND name = N'INDEX_RUN_ID')
CREATE UNIQUE CLUSTERED INDEX [INDEX_RUN_ID] ON [dbo].[TIB_LOG] 
(
	[RUN_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG]') AND name = N'INDEX_INTEGRATION_NAME')
CREATE NONCLUSTERED INDEX [INDEX_INTEGRATION_NAME] ON [dbo].[TIB_LOG] 
(
	[INTEGRATION_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG]') AND name = N'INDEX_RUN_DATE')
CREATE NONCLUSTERED INDEX [INDEX_RUN_DATE] ON [dbo].[TIB_LOG] 
(
	[RUN_DATE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIB_GROUP]    Script Date: 04/02/2014 12:44:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_GROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIB_GROUP](
	[ID_GROUP] [int] IDENTITY(1,1) NOT NULL,
	[GROUP_NAME] [varchar](50) NOT NULL,
	[PROJECT_NAME] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TIB_GROUP] PRIMARY KEY CLUSTERED 
(
	[ID_GROUP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
GO
GRANT SELECT ON [dbo].[TIB_GROUP] TO PUBLIC
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIB_USER]    Script Date: 04/02/2014 12:44:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_USER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIB_USER](
	[ID_USER] [int] IDENTITY(1,1) NOT NULL,
	[NAME] [varchar](50) NULL,
	[EMAIL] [varchar](50) NULL,
 CONSTRAINT [PK_TIB_USER] PRIMARY KEY CLUSTERED 
(
	[ID_USER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
GRANT SELECT ON [dbo].[TIB_USER] TO PUBLIC
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TIB_USER_GROUP]    Script Date: 04/02/2014 12:44:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TIB_USER_GROUP](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_USER] [int] NULL,
	[ID_GROUP] [int] NULL,
 CONSTRAINT [PK_TIB_USER_GROUP] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
GRANT SELECT ON [dbo].[TIB_USER_GROUP] TO PUBLIC
GO
/****** Object:  StoredProcedure [dbo].[SP_Purge_Tib_Log_Error]    Script Date: 04/02/2014 12:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Purge_Tib_Log_Error]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Purge_Tib_Log_Error]
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Purge_Tib_Log_Error]
AS
SET NOCOUNT ON
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
		
delete from tib_log_error
where error_date >= convert(varchar, getdate()-90)
END
GO
GRANT EXECUTE ON [SP_Purge_Tib_Log_Error] TO PUBLIC
GO
/****** Object:  StoredProcedure [dbo].[SP_Purge_Tib_Log]    Script Date: 04/02/2014 12:44:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Purge_Tib_Log]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Purge_Tib_Log]
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Purge_Tib_Log]
AS
SET NOCOUNT ON
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	
delete from tib_log
where run_date >= convert(varchar, getdate()-7)
END 
GO
GRANT EXECUTE ON [SP_Purge_Tib_Log] TO PUBLIC
GO
/****** Object:  ForeignKey [FK_TIB_USER_GROUP_TIB_GROUP]    Script Date: 04/02/2014 12:44:19 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP]  WITH CHECK ADD  CONSTRAINT [FK_TIB_USER_GROUP_TIB_GROUP] FOREIGN KEY([ID_GROUP])
REFERENCES [dbo].[TIB_GROUP] ([ID_GROUP])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] CHECK CONSTRAINT [FK_TIB_USER_GROUP_TIB_GROUP]
GO
/****** Object:  ForeignKey [FK_TIB_USER_GROUP_TIB_USER]    Script Date: 04/02/2014 12:44:19 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP]  WITH CHECK ADD  CONSTRAINT [FK_TIB_USER_GROUP_TIB_USER] FOREIGN KEY([ID_USER])
REFERENCES [dbo].[TIB_USER] ([ID_USER])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] CHECK CONSTRAINT [FK_TIB_USER_GROUP_TIB_USER]
GO
