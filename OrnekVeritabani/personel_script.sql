USE [master]
GO
/****** Object:  Database [Personel]    Script Date: 11.4.2015 19:21:44 ******/
CREATE DATABASE [Personel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Personel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Personel.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Personel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Personel_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Personel] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Personel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Personel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Personel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Personel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Personel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Personel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Personel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Personel] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Personel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Personel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Personel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Personel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Personel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Personel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Personel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Personel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Personel] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Personel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Personel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Personel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Personel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Personel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Personel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Personel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Personel] SET RECOVERY FULL 
GO
ALTER DATABASE [Personel] SET  MULTI_USER 
GO
ALTER DATABASE [Personel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Personel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Personel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Personel] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Personel', N'ON'
GO
USE [Personel]
GO
/****** Object:  StoredProcedure [dbo].[SehirEkle]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SehirEkle]
	-- Add the parameters for the stored procedure here
	@SehirAdi varchar(50),
	@Plaka char(2)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO [dbo].[SEhirler]
           ([Ad]
           ,[Plaka])
     VALUES
           (@SehirAdi, @Plaka)

END

GO
/****** Object:  Table [dbo].[Ilceler]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ilceler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SehirID] [tinyint] NOT NULL,
	[Ad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ilceler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kimlikler]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kimlikler](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TCKimlikNosu] [char](11) NOT NULL,
	[Ad] [varchar](30) NOT NULL,
	[Ikinci Ad] [varchar](50) NULL,
	[Soyad] [varchar](30) NOT NULL,
	[DogumTarihi] [date] NULL,
	[EvADREsMAh] [nchar](10) NULL,
	[EV] [nchar](10) NULL,
	[EklenmeZamani] [date] NULL,
	[AktifMİ] [bit] NULL,
 CONSTRAINT [PK_Kimlikler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Lookup]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lookup](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[GRupAdi] [varchar](50) NULL,
	[Adi] [varchar](50) NULL,
 CONSTRAINT [PK_Lookup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SEhirler]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SEhirler](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](50) NULL,
	[Plaka] [char](2) NULL,
 CONSTRAINT [PK_SEhirler] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSehirlerIlceler]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSehirlerIlceler](
	[SehirAdi] [varchar](50) NULL,
	[ilceAdi] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[vSehirlerveILceleri]    Script Date: 11.4.2015 19:21:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vSehirlerveILceleri]
AS
SELECT dbo.Ilceler.Ad AS ilcead, dbo.SEhirler.Ad AS sehirad
FROM  dbo.Ilceler INNER JOIN
         dbo.SEhirler ON dbo.Ilceler.SehirID = dbo.SEhirler.ID

GO
SET IDENTITY_INSERT [dbo].[Ilceler] ON 

INSERT [dbo].[Ilceler] ([ID], [SehirID], [Ad]) VALUES (1, 1, N'Seyhan')
INSERT [dbo].[Ilceler] ([ID], [SehirID], [Ad]) VALUES (2, 1, N'CEyhan')
INSERT [dbo].[Ilceler] ([ID], [SehirID], [Ad]) VALUES (5, 2, N'xxx')
INSERT [dbo].[Ilceler] ([ID], [SehirID], [Ad]) VALUES (7, 0, N'yyy')
SET IDENTITY_INSERT [dbo].[Ilceler] OFF
SET IDENTITY_INSERT [dbo].[Kimlikler] ON 

INSERT [dbo].[Kimlikler] ([ID], [TCKimlikNosu], [Ad], [Ikinci Ad], [Soyad], [DogumTarihi], [EvADREsMAh], [EV], [EklenmeZamani], [AktifMİ]) VALUES (9, N'12345678902', N'Ali', N'Veli', N'Deli', CAST(0x2A2B0B00 AS Date), NULL, NULL, CAST(0xCB390B00 AS Date), 1)
INSERT [dbo].[Kimlikler] ([ID], [TCKimlikNosu], [Ad], [Ikinci Ad], [Soyad], [DogumTarihi], [EvADREsMAh], [EV], [EklenmeZamani], [AktifMİ]) VALUES (11, N'98765432102', N'Ali', N'Vel', N'Deli', CAST(0x2A2B0B00 AS Date), NULL, NULL, CAST(0xCB390B00 AS Date), 1)
SET IDENTITY_INSERT [dbo].[Kimlikler] OFF
SET IDENTITY_INSERT [dbo].[Lookup] ON 

INSERT [dbo].[Lookup] ([ID], [GRupAdi], [Adi]) VALUES (1, N'AdresTipi', N'Ev')
INSERT [dbo].[Lookup] ([ID], [GRupAdi], [Adi]) VALUES (2, N'AdrestTipi', N'İş')
INSERT [dbo].[Lookup] ([ID], [GRupAdi], [Adi]) VALUES (3, N'AdresTipi', N'Yazlık')
INSERT [dbo].[Lookup] ([ID], [GRupAdi], [Adi]) VALUES (4, N'CinsiyetTipi', N'Erkek')
SET IDENTITY_INSERT [dbo].[Lookup] OFF
SET IDENTITY_INSERT [dbo].[SEhirler] ON 

INSERT [dbo].[SEhirler] ([ID], [Ad], [Plaka]) VALUES (1, N'Adana', N'01')
INSERT [dbo].[SEhirler] ([ID], [Ad], [Plaka]) VALUES (2, N'Adıyaman', N'02')
INSERT [dbo].[SEhirler] ([ID], [Ad], [Plaka]) VALUES (3, N'Afyon', N'03')
INSERT [dbo].[SEhirler] ([ID], [Ad], [Plaka]) VALUES (4, N'İzmir', N'35')
INSERT [dbo].[SEhirler] ([ID], [Ad], [Plaka]) VALUES (5, N'Rize', N'67')
INSERT [dbo].[SEhirler] ([ID], [Ad], [Plaka]) VALUES (6, N'Urfa', N'63')
SET IDENTITY_INSERT [dbo].[SEhirler] OFF
INSERT [dbo].[tblSehirlerIlceler] ([SehirAdi], [ilceAdi]) VALUES (N'Adana', N'Seyhan')
INSERT [dbo].[tblSehirlerIlceler] ([SehirAdi], [ilceAdi]) VALUES (N'Adana', N'CEyhan')
INSERT [dbo].[tblSehirlerIlceler] ([SehirAdi], [ilceAdi]) VALUES (N'Adıyaman', N'xxx')
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Kimlikler]    Script Date: 11.4.2015 19:21:44 ******/
ALTER TABLE [dbo].[Kimlikler] ADD  CONSTRAINT [IX_Kimlikler] UNIQUE NONCLUSTERED 
(
	[TCKimlikNosu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Kimlikler_1]    Script Date: 11.4.2015 19:21:44 ******/
ALTER TABLE [dbo].[Kimlikler] ADD  CONSTRAINT [IX_Kimlikler_1] UNIQUE NONCLUSTERED 
(
	[Ad] ASC,
	[Ikinci Ad] ASC,
	[Soyad] ASC,
	[DogumTarihi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Kimlikler] ADD  CONSTRAINT [DF_Kimlikler_EklenmeZamani]  DEFAULT (getdate()) FOR [EklenmeZamani]
GO
ALTER TABLE [dbo].[Kimlikler] ADD  CONSTRAINT [DF_Kimlikler_AktifMİ]  DEFAULT ((1)) FOR [AktifMİ]
GO
ALTER TABLE [dbo].[Kimlikler]  WITH CHECK ADD  CONSTRAINT [CK_TCKNoKOntrol] CHECK  ((CONVERT([bigint],[TCKimlikNosu])%(2)=(0)))
GO
ALTER TABLE [dbo].[Kimlikler] CHECK CONSTRAINT [CK_TCKNoKOntrol]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[29] 4[19] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ilceler"
            Begin Extent = 
               Top = 56
               Left = 652
               Bottom = 269
               Right = 927
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "SEhirler"
            Begin Extent = 
               Top = 88
               Left = 165
               Bottom = 301
               Right = 440
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
         Width = 750
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vSehirlerveILceleri'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vSehirlerveILceleri'
GO
USE [master]
GO
ALTER DATABASE [Personel] SET  READ_WRITE 
GO
