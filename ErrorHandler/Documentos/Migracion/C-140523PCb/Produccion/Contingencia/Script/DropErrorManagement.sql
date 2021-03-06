USE [DBSDI]
GO
/****** Object:  ForeignKey [FK_TIB_USER_GROUP_TIB_USER]    Script Date: 04/02/2014 12:23:11 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER]'))
ALTER TABLE [dbo].[TIB_USER] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_USER]
GO
/****** Object:  ForeignKey [FK_TIB_USER_GROUP_TIB_GROUP]    Script Date: 04/02/2014 12:23:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_GROUP]
GO
/****** Object:  Table [dbo].[TIB_USER_GROUP]    Script Date: 04/02/2014 12:23:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_GROUP]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]'))
ALTER TABLE [dbo].[TIB_USER_GROUP] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_GROUP]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_USER_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_USER_GROUP]
GO
/****** Object:  Table [dbo].[TIB_LOG]    Script Date: 04/02/2014 12:23:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_LOG]
GO
/****** Object:  Table [dbo].[TIB_LOG_ERROR]    Script Date: 04/02/2014 12:23:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_LOG_ERROR]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_LOG_ERROR]
GO
/****** Object:  Table [dbo].[TIB_PROCESS_CONTROL]    Script Date: 04/02/2014 12:23:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_PROCESS_CONTROL]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_PROCESS_CONTROL]
GO
/****** Object:  StoredProcedure [dbo].[SP_Purge_Tib_Log]    Script Date: 04/02/2014 12:23:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Purge_Tib_Log]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Purge_Tib_Log]
GO
/****** Object:  StoredProcedure [dbo].[SP_Purge_Tib_Log_Error]    Script Date: 04/02/2014 12:23:56 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_Purge_Tib_Log_Error]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_Purge_Tib_Log_Error]
GO
/****** Object:  Table [dbo].[TIB_USER]    Script Date: 04/02/2014 12:23:11 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_TIB_USER_GROUP_TIB_USER]') AND parent_object_id = OBJECT_ID(N'[dbo].[TIB_USER]'))
ALTER TABLE [dbo].[TIB_USER] DROP CONSTRAINT [FK_TIB_USER_GROUP_TIB_USER]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_USER]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_USER]
GO
/****** Object:  Table [dbo].[TIB_GROUP]    Script Date: 04/02/2014 12:23:09 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TIB_GROUP]') AND type in (N'U'))
DROP TABLE [dbo].[TIB_GROUP]
GO
