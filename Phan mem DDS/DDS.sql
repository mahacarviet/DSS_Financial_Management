USE [master]
GO
/****** Object:  Database [DDS]    Script Date: 30/10/2020 6:48:55 CH ******/
CREATE DATABASE [DDS]
GO
ALTER DATABASE [DDS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DDS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DDS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DDS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DDS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DDS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DDS] SET ARITHABORT OFF 
GO
ALTER DATABASE [DDS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DDS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DDS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DDS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DDS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DDS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DDS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DDS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DDS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DDS] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DDS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DDS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DDS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DDS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DDS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DDS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DDS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DDS] SET RECOVERY FULL 
GO
ALTER DATABASE [DDS] SET  MULTI_USER 
GO
ALTER DATABASE [DDS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DDS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DDS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DDS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DDS] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DDS', N'ON'
GO
USE [DDS]
GO
/****** Object:  Table [dbo].[12thang]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[12thang](
	[Dieu kien] [varchar](50) NULL,
	[Vang] [real] NULL,
	[Ngan hang] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[3thang]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[3thang](
	[Dieu kien] [varchar](50) NULL,
	[Vang] [real] NULL,
	[Ngan Hang] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[6thang]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[6thang](
	[Dieu kien] [varchar](50) NULL,
	[Vang] [real] NULL,
	[Ngan hang] [real] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PT_nam]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT_nam](
	[Nam] [int] NULL,
	[Toc do phat trien] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PT_quy]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PT_quy](
	[Quy] [int] NULL,
	[Toc do phat trien] [real] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[12thang] ([Dieu kien], [Vang], [Ngan hang]) VALUES (N'KTPT', 11.1, 6.1)
INSERT [dbo].[12thang] ([Dieu kien], [Vang], [Ngan hang]) VALUES (N'KTTT', 6, 4.9)
INSERT [dbo].[12thang] ([Dieu kien], [Vang], [Ngan hang]) VALUES (N'LP', 4.1, 2.6)
INSERT [dbo].[3thang] ([Dieu kien], [Vang], [Ngan Hang]) VALUES (N'KTPT', 2.9, 1.5)
INSERT [dbo].[3thang] ([Dieu kien], [Vang], [Ngan Hang]) VALUES (N'KTTT', 1.7, 1.1)
INSERT [dbo].[3thang] ([Dieu kien], [Vang], [Ngan Hang]) VALUES (N'LP', -0.8, 0.5)
INSERT [dbo].[6thang] ([Dieu kien], [Vang], [Ngan hang]) VALUES (N'KTPT', 5.5, 3.1)
INSERT [dbo].[6thang] ([Dieu kien], [Vang], [Ngan hang]) VALUES (N'KTTT', 3, 2.4)
INSERT [dbo].[6thang] ([Dieu kien], [Vang], [Ngan hang]) VALUES (N'LP', 2, 1.3)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2008, 6.23)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2009, 5.32)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2010, 6.78)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2011, 5.59)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2012, 5.03)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2013, 5.42)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2014, 5.98)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2015, 6.68)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2016, 6.21)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2017, 6.81)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2018, 7.08)
INSERT [dbo].[PT_nam] ([Nam], [Toc do phat trien]) VALUES (2019, 8.25)
INSERT [dbo].[PT_quy] ([Quy], [Toc do phat trien]) VALUES (1, 3.82)
INSERT [dbo].[PT_quy] ([Quy], [Toc do phat trien]) VALUES (2, 0.36)
INSERT [dbo].[PT_quy] ([Quy], [Toc do phat trien]) VALUES (3, 2.62)
INSERT [dbo].[PT_quy] ([Quy], [Toc do phat trien]) VALUES (4, 0)
/****** Object:  StoredProcedure [dbo].[sp_MAOHIEM]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MAOHIEM]
	@DDKTPT REAL,
	@DDKTTT REAL,
	@DDLP REAL,
	@DUDOAN varchar(50) OUT
AS
BEGIN
	DECLARE @TONGVANG REAL
	DECLARE @TONGNH REAL
	

		SET @TONGVANG = ((SELECT Vang FROM dbo.[3thang] WHERE [Dieu kien] = 'KTPT')*@DDKTPT)+((SELECT Vang FROM dbo.[3thang] WHERE [Dieu kien] = 'KTTT')*@DDKTTT)+((SELECT Vang FROM dbo.[3thang] WHERE [Dieu kien] = 'LP')*@DDLP)
		SET @TONGNH = ((SELECT [Ngan Hang] FROM dbo.[3thang] WHERE [Dieu kien] = 'KTPT')*@DDKTPT)+((SELECT [Ngan Hang] FROM dbo.[3thang] WHERE [Dieu kien] = 'KTTT')*@DDKTTT)+((SELECT [Ngan Hang] FROM dbo.[3thang] WHERE [Dieu kien] = 'LP')*@DDLP)
		SET @DUDOAN = CAST((@TONGVANG + @TONGNH)/10 AS varchar(50))
		print @DUDOAN

END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAOHIEM12]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MAOHIEM12]
	@DDKTPT REAL,
	@DDKTTT REAL,
	@DDLP REAL,
	@DUDOAN varchar(50) OUT
AS
BEGIN
	DECLARE @TONGVANG REAL
	DECLARE @TONGNH REAL

		SET @TONGVANG = ((SELECT Vang FROM dbo.[12thang] WHERE [Dieu kien] = 'KTPT')*@DDKTPT)+((SELECT Vang FROM dbo.[6thang] WHERE [Dieu kien] = 'KTTT')*@DDKTTT)+((SELECT Vang FROM dbo.[12thang] WHERE [Dieu kien] = 'LP')*@DDLP)
		SET @TONGNH = ((SELECT [Ngan Hang] FROM dbo.[12thang] WHERE [Dieu kien] = 'KTPT')*@DDKTPT)+((SELECT [Ngan Hang] FROM dbo.[12thang] WHERE [Dieu kien] = 'KTTT')*@DDKTTT)+((SELECT [Ngan Hang] FROM dbo.[12thang] WHERE [Dieu kien] = 'LP')*@DDLP)
		SET @DUDOAN = CAST((@TONGVANG + @TONGNH) AS varchar(50))
		print @DUDOAN

END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAOHIEM6]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_MAOHIEM6]
	@DDKTPT REAL,
	@DDKTTT REAL,
	@DDLP REAL,
	@DUDOAN varchar(50) OUT
AS
BEGIN
	DECLARE @TONGVANG REAL
	DECLARE @TONGNH REAL

		SET @TONGVANG = ((SELECT Vang FROM dbo.[6thang] WHERE [Dieu kien] = 'KTPT')*@DDKTPT)+((SELECT Vang FROM dbo.[6thang] WHERE [Dieu kien] = 'KTTT')*@DDKTTT)+((SELECT Vang FROM dbo.[6thang] WHERE [Dieu kien] = 'LP')*@DDLP)
		SET @TONGNH = ((SELECT [Ngan Hang] FROM dbo.[6thang] WHERE [Dieu kien] = 'KTPT')*@DDKTPT)+((SELECT [Ngan Hang] FROM dbo.[6thang] WHERE [Dieu kien] = 'KTTT')*@DDKTTT)+((SELECT [Ngan Hang] FROM dbo.[6thang] WHERE [Dieu kien] = 'LP')*@DDLP)
		SET @DUDOAN = CAST((@TONGVANG + @TONGNH) AS varchar(50))
		print @DUDOAN
		

END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAXMAX]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MAXMAX]
	@LUACHON VARCHAR(50) OUT,
	@DAURA VARCHAR(50) out

AS
BEGIN
	DECLARE @max REAL
	SET @max = (select MAX(Vang) from dbo.[3thang])
	IF(select MAX(Vang) from dbo.[3thang])>(SELECT MAX([Ngan Hang]) from dbo.[3thang]) 
		BEGIN
			SET @DAURA = CAST((select MAX(Vang) from dbo.[3thang]) AS varchar(50))
			SET @LUACHON = 'Vang'
			
		END
	ELSE
		BEGIN
			SET @DAURA = CAST((SELECT MAX([Ngan Hang]) from dbo.[3thang]) AS varchar(50))
			SET @LUACHON = 'Ngan hang'
		END
	PRINT @DAURA
	PRINT @LUACHON
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAXMAX12]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MAXMAX12]
	@LUACHON VARCHAR(50) OUT,
	@DAURA VARCHAR(50) out

AS
BEGIN
	DECLARE @max REAL
	SET @max = (select MAX(Vang) from dbo.[12thang])
	IF(select MAX(Vang) from dbo.[12thang])>(SELECT MAX([Ngan Hang]) from dbo.[12thang]) 
		BEGIN
			SET @DAURA = CAST((select MAX(Vang) from dbo.[12thang]) AS varchar(50))
			SET @LUACHON = 'Vang'
			
		END
	ELSE
		BEGIN
			SET @DAURA = CAST((SELECT MAX([Ngan Hang]) from dbo.[12thang]) AS varchar(50))
			SET @LUACHON = 'Ngan hang'
		END
	PRINT @DAURA
	PRINT @LUACHON
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAXMAX6]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MAXMAX6]
	@LUACHON VARCHAR(50) OUT,
	@DAURA VARCHAR(50) out

AS
BEGIN
	DECLARE @max REAL
	SET @max = (select MAX(Vang) from dbo.[6thang])
	IF(select MAX(Vang) from dbo.[6thang])>(SELECT MAX([Ngan Hang]) from dbo.[6thang]) 
		BEGIN
			SET @DAURA = CAST((select MAX(Vang) from dbo.[6thang]) AS varchar(50))
			SET @LUACHON = 'Vang'
			
		END
	ELSE
		BEGIN
			SET @DAURA = CAST((SELECT MAX([Ngan Hang]) from dbo.[6thang]) AS varchar(50))
			SET @LUACHON = 'Ngan hang'
		END
	PRINT @DAURA
	PRINT @LUACHON
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAXMIN]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MAXMIN]
	@LUACHON VARCHAR(50) OUT,
	@DAURA VARCHAR(50) out

AS
BEGIN
	DECLARE @max REAL
	SET @max = (select MAX(Vang) from dbo.[3thang])
	IF(select MAX(Vang) from dbo.[3thang])<(SELECT MAX([Ngan Hang]) from dbo.[3thang]) 
		BEGIN
			SET @DAURA = CAST((select MAX(Vang) from dbo.[3thang]) AS varchar(50))
			SET @LUACHON = 'Vang'
			
		END
	ELSE
		BEGIN
			SET @DAURA = CAST((SELECT MAX([Ngan Hang]) from dbo.[3thang]) AS varchar(50))
			SET @LUACHON = 'Ngan hang'
		END
	PRINT @DAURA
	PRINT @LUACHON
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAXMIN12]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MAXMIN12]
	@LUACHON VARCHAR(50) OUT,
	@DAURA VARCHAR(50) out

AS
BEGIN
	DECLARE @max REAL
	SET @max = (select MAX(Vang) from dbo.[12thang])
	IF(select MAX(Vang) from dbo.[12thang])<(SELECT MAX([Ngan Hang]) from dbo.[12thang]) 
		BEGIN
			SET @DAURA = CAST((select MAX(Vang) from dbo.[12thang]) AS varchar(50))
			SET @LUACHON = 'Vang'
			
		END
	ELSE
		BEGIN
			SET @DAURA = CAST((SELECT MAX([Ngan Hang]) from dbo.[12thang]) AS varchar(50))
			SET @LUACHON = 'Ngan hang'
		END
	PRINT @DAURA
	PRINT @LUACHON
END
GO
/****** Object:  StoredProcedure [dbo].[sp_MAXMIN6]    Script Date: 30/10/2020 6:48:57 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_MAXMIN6]
	@LUACHON VARCHAR(50) OUT,
	@DAURA VARCHAR(50) out

AS
BEGIN
	DECLARE @max REAL
	SET @max = (select MAX(Vang) from dbo.[6thang])
	IF(select MAX(Vang) from dbo.[6thang])<(SELECT MAX([Ngan Hang]) from dbo.[6thang]) 
		BEGIN
			SET @DAURA = CAST((select MAX(Vang) from dbo.[6thang]) AS varchar(50))
			SET @LUACHON = 'Vang'
			
		END
	ELSE
		BEGIN
			SET @DAURA = CAST((SELECT MAX([Ngan Hang]) from dbo.[6thang]) AS varchar(50))
			SET @LUACHON = 'Ngan hang'
		END
	PRINT @DAURA
	PRINT @LUACHON
END

GO
USE [master]
GO
ALTER DATABASE [DDS] SET  READ_WRITE 
GO
