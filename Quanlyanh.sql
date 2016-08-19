

/****** Object:  Database [Quanlyanh]    */
CREATE DATABASE [Quanlyanh] 

GO
ALTER DATABASE [Quanlyanh] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Quanlyanh].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Quanlyanh] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Quanlyanh] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Quanlyanh] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Quanlyanh] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Quanlyanh] SET ARITHABORT OFF
GO
ALTER DATABASE [Quanlyanh] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Quanlyanh] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Quanlyanh] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Quanlyanh] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Quanlyanh] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Quanlyanh] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Quanlyanh] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Quanlyanh] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Quanlyanh] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Quanlyanh] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Quanlyanh] SET  DISABLE_BROKER
GO
ALTER DATABASE [Quanlyanh] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Quanlyanh] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Quanlyanh] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Quanlyanh] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Quanlyanh] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Quanlyanh] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Quanlyanh] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Quanlyanh] SET  READ_WRITE
GO
ALTER DATABASE [Quanlyanh] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Quanlyanh] SET  MULTI_USER
GO
ALTER DATABASE [Quanlyanh] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Quanlyanh] SET DB_CHAINING OFF
GO
USE [Quanlyanh]
GO
/****** Object:  StoredProcedure [dbo].[SP_LOADLUOI]    Script Date: 07/24/2016 12:28:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LOADLUOI] @DOITUONG Char(200), @TENBANG nvarchar(200),@DIEUKIEN nvarchar(200)
AS
	BEGIN 
		declare @sql nvarchar(4000) set @sql=''
		set @sql=@sql+' select '+@DOITUONG+' from '+@TENBANG+' where '+@DIEUKIEN
		exec(@sql)
	END
	RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemDuLieuCoDK]    Script Date: 07/24/2016 12:28:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ThemDuLieuCoDK] @TENBANG Char(200), @DOITUONG nvarchar(200)
AS
	BEGIN
		declare @sql nvarchar(4000) set @sql=''
		set @sql=@sql+' insert into '+@TENBANG+' values('+@DOITUONG+')'
		exec(@sql)
	END
	RETURN
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [char](10) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Matkhau] [char](10) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Email] [char](30) NULL,
	[SDT] [int] NULL,
	[Permission] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Users] ([ID], [Hoten], [Matkhau], [Diachi], [Email], [SDT], [Permission]) VALUES (N'admin', N'Nguyễn Quang Sơn', N'admin', N'Nguyễn Kiệm', N'admin@admin.admin ', 123456789, 1)
INSERT [dbo].[Users] ([ID], [Hoten], [Matkhau], [Diachi], [Email], [SDT], [Permission]) VALUES (N'nghia', N'Nhân Nghĩa', N'nghia', N'Nguyễn Kiệm', N'Fast@hotmail.com ', 123454231, 0)
INSERT [dbo].[Users] ([ID], [Hoten], [Matkhau], [Diachi], [Email], [SDT], [Permission]) VALUES (N'co1234', N'Trương Cơ', N'co1234', N'Nguyễn Kiệm', N'co1234@mail.com ', 111111111, 0)

/****** Object:  Table [dbo].[Trienlam]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trienlam](
	[Matrienlam] [int] IDENTITY(1,1) NOT NULL,
	[Tentrienlam] [nvarchar](50) NULL,
	[Chude] [nvarchar](50) NULL,
	[Ngaybatdau] [datetime] NULL,
	[Ngayketthuc] [datetime] NULL,
 CONSTRAINT [PK_Table_1] PRIMARY KEY CLUSTERED 
(
	[Matrienlam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Trienlam] ON
INSERT [dbo].[Trienlam] ([Matrienlam], [Tentrienlam], [Chude], [Ngaybatdau], [Ngayketthuc]) VALUES (23, N'Mùa Xuân 2016', N'Tết Nguyên Đán', CAST(0x0000A57600FA36B0 AS DateTime), CAST(0x0000A5E300B16DE0 AS DateTime))
INSERT [dbo].[Trienlam] ([Matrienlam], [Tentrienlam], [Chude], [Ngaybatdau], [Ngayketthuc]) VALUES (24, N'Mùa Đông 2015', N'Đông về', CAST(0x0000A57600FA36B0 AS DateTime), CAST(0x0000A5A200B16DE0 AS DateTime))
INSERT [dbo].[Trienlam] ([Matrienlam], [Tentrienlam], [Chude], [Ngaybatdau], [Ngayketthuc]) VALUES (25, N'Con Người', N'Đấu Tranh Nhân Quyền', CAST(0x0000A57600FAC350 AS DateTime), CAST(0x0000A64B00B16DE0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Trienlam] OFF
/****** Object:  StoredProcedure [dbo].[SP_CheckLogin]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CheckLogin]
@ID char(10),
@Matkhau char(30),
@Permission nvarchar(50)
AS
BEGIN
	SELECT * FROM Users
	WHERE ID=@ID and Matkhau=@Matkhau and Permission=@Permission;
END
GO
/****** Object:  Table [dbo].[Album]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Album](
	[Maalbum] [int] IDENTITY(1,1) NOT NULL,
	[Tenalbum] [nvarchar](50) NULL,
	[ID] [char](10) NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[Maalbum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Album] ON
INSERT [dbo].[Album] ([Maalbum], [Tenalbum], [ID]) VALUES (37, N'Hoa', N'admin   ')
INSERT [dbo].[Album] ([Maalbum], [Tenalbum], [ID]) VALUES (38, N'Mùa Đông', N'admin    ')
INSERT [dbo].[Album] ([Maalbum], [Tenalbum], [ID]) VALUES (39, N'Hè', N'nghia    ')
INSERT [dbo].[Album] ([Maalbum], [Tenalbum], [ID]) VALUES (40, N'Bóng Đá', N'nghia    ')
INSERT [dbo].[Album] ([Maalbum], [Tenalbum], [ID]) VALUES (41, N'Hoa Đà Lạt', N'co1234   ')
INSERT [dbo].[Album] ([Maalbum], [Tenalbum], [ID]) VALUES (42, N'Đường phố', N'co1234   ')
SET IDENTITY_INSERT [dbo].[Album] OFF
/****** Object:  StoredProcedure [dbo].[SP_XOATRIENLAM]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOATRIENLAM]
@Matrienlam int
AS
BEGIN
	DELETE Trienlam
	WHERE Matrienlam=@Matrienlam
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOATHANHVIEN]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOATHANHVIEN]
@ID char(10)
AS
BEGIN
	DELETE Users
	WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATETRIENLAM]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATETRIENLAM]
@Matrienlam nvarchar(50),
@Tentrienlam nvarchar(50),
@Chude nvarchar(50),
@Ngaybatdau nvarchar(50),
@Ngayketthuc nvarchar(50)
AS
BEGIN
		UPDATE Trienlam set Tentrienlam=@Tentrienlam,Chude=@Chude,Ngaybatdau=@Ngaybatdau,Ngayketthuc=@Ngayketthuc
		WHERE Matrienlam = @Matrienlam
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATETAIKHOAN]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATETAIKHOAN]
@ID nvarchar(50),
@Hoten nvarchar(50),
@Matkhau nvarchar(50),
@Diachi nvarchar(50),
@Email nvarchar(50),
@SDT int

AS
BEGIN
		UPDATE Users set Hoten=@Hoten,Matkhau=@Matkhau,Diachi=@Diachi,Email=@Email,SDT=@SDT
		WHERE ID = @ID
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_ThemTrienLam]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ThemTrienLam]
@Tentrienlam nvarchar(50),
@Chude nvarchar(50),
@Ngaybatdau nvarchar(50),
@Ngayketthuc nvarchar(50)
AS
BEGIN
	INSERT INTO Trienlam VALUES(@Tentrienlam,@Chude,@Ngaybatdau,@Ngayketthuc)
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemThanhVien]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_ThemThanhVien]
@ID	char(10),
@Hoten nvarchar(50),
@Matkhau char(30),
@Diachi nvarchar(50),
@Email char(50),
@SDT int,
@Permission int	
as
begin
	insert into Users values(@ID,@Hoten,@Matkhau,@Diachi,@Email,@SDT,@Permission)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_KTUsers]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KTUsers]
@ID char(10)
AS
BEGIN
	SELECT * FROM Users
	WHERE ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LOADDSTV]    Script Date: 07/24/2016 12:28:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LOADDSTV]
AS
BEGIN
	SELECT ID,Hoten,Diachi,Email,SDT FROM Users
END
GO
/****** Object:  View [dbo].[V_Users]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Users]
AS
SELECT     ID, Hoten, Matkhau, Diachi, Email, SDT
FROM         dbo.Users
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
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
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 126
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Users'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Users'
GO
/****** Object:  StoredProcedure [dbo].[SP_XOAALBUM]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOAALBUM]
@Maalbum int
AS
BEGIN
	DELETE Album
	WHERE Maalbum=@Maalbum
END
GO
/****** Object:  StoredProcedure [dbo].[sp_ThemAlbum]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_ThemAlbum]
@Tenalbum nvarchar(50),
@ID char(10)
AS
BEGIN
	INSERT INTO Album values(@Tenalbum,@ID)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoadAlbum]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LoadAlbum]
@ID char(10)
AS
BEGIN
	SELECT * FROM Album a,Users u
	WHERE a.ID = u.ID and @ID = u.ID
END
GO
/****** Object:  Table [dbo].[Catology]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catology](
	[MaCatology] [int] IDENTITY(1,1) NOT NULL,
	[TenCatology] [nvarchar](50) NULL,
	[Maalbum] [int] NOT NULL,
 CONSTRAINT [PK_Catology] PRIMARY KEY CLUSTERED 
(
	[MaCatology] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catology] ON
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (41, N'Hoa Hồng', 37)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (42, N'Merry Christmas', 38)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (43, N'Hoa Tulip', 37)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (44, N'Hồ bơi', 39)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (45, N'Công viên', 39)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (46, N'Penaty', 40)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (47, N'Hoa xấu', 41)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (48, N'Đêm tối', 42)
INSERT [dbo].[Catology] ([MaCatology], [TenCatology], [Maalbum]) VALUES (49, N'Hoa OMG', 41)
SET IDENTITY_INSERT [dbo].[Catology] OFF
/****** Object:  Table [dbo].[Picture]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Picture](
	[Mahinhanh] [int] IDENTITY(1,1) NOT NULL,
	[Tenhinhanh] [nvarchar](50) NULL,
	[Kichthuoc] [char](10) NULL,
	[Tieucu] [char](10) NULL,
	[Ngayluu] [datetime] NULL,
	[MaCatology] [int] NOT NULL,
	[Hinhanh] [varchar](max) NULL,
	[Ghichu] [nvarchar](50) NULL,
	[Setpublic] [bit] NULL,
 CONSTRAINT [PK_Picture_1] PRIMARY KEY CLUSTERED 
(
	[Mahinhanh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Picture] ON
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (90, N'Hoa Hồng', N'1000x1000 ', N'10        ', CAST(0x0000A57600FB9640 AS DateTime), 41, N'\Images\HoaHong1.jpg', N'Đẹp', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (91, N'Hoa và nỗi nhớ', N'111x111   ', N'15        ', CAST(0x0000A57600FB9640 AS DateTime), 41, N'\Images\Hoa2.jpg', N'Chụp tại sa mạc', 0)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (92, N'Đông về', N'123x123   ', N'100       ', CAST(0x0000A57600FB9640 AS DateTime), 42, N'\Images\Background-winter.jpg', N'Mùa đông', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (93, N'Hoa sen', N'1111x1111 ', N'20        ', CAST(0x0000A57600FB9640 AS DateTime), 43, N'\Images\HoaSen.jpg', N'Hoa sen', 0)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (94, N'Sunset', N'1980x1280 ', N'100       ', CAST(0x0000A57600FB9640 AS DateTime), 42, N'\Images\Sunset.jpg', N'Full HD', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (95, N'Cây xanh', N'1000x1000 ', N'100       ', CAST(0x0000A57600FF6EA0 AS DateTime), 45, N'\Images\Tree.jpg', N'Cây', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (96, N'Công viên', N'123x213   ', N'11        ', CAST(0x0000A57600FF6EA0 AS DateTime), 45, N'\Images\images.jpg', N'Công viên Gia Định', 0)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (97, N'Nóng', N'1000x111  ', N'1234      ', CAST(0x0000A57600FF6EA0 AS DateTime), 46, N'\Images\1Convit.jpg', N'hè', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (98, N'Hoa Buồn', N'1234x1234 ', N'100       ', CAST(0x0000A57600FF6EA0 AS DateTime), 44, N'\Images\11112.jpg', N'Hoa đẹp', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (99, N'4 Con Mèo', N'1234x1234 ', N'11        ', CAST(0x0000A57600FF6EA0 AS DateTime), 45, N'\Images\4ConMeo.jpg', N'Mèo', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (100, N'Hoa 1', N'1x1       ', N'100       ', CAST(0x0000A57601053330 AS DateTime), 47, N'\Images\Hoadalat1.jpg', N'Hoa đà lạt', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (101, N'Hoa 2', N'1x1       ', N'100       ', CAST(0x0000A57601053330 AS DateTime), 47, N'\Images\Hoadalat2.jpg', N'AAAA', 1)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (102, N'Hoa 3', N'12x12     ', N'123       ', CAST(0x0000A57601053330 AS DateTime), 47, N'\Images\CoMay.jpg', N'Chụp tại Langbiang', 0)
INSERT [dbo].[Picture] ([Mahinhanh], [Tenhinhanh], [Kichthuoc], [Tieucu], [Ngayluu], [MaCatology], [Hinhanh], [Ghichu], [Setpublic]) VALUES (103, N'Hoa 4', N'123       ', N'123       ', CAST(0x0000A57601053330 AS DateTime), 49, N'\Images\Hoa4.jpg', N'Hoa 4', 1)
SET IDENTITY_INSERT [dbo].[Picture] OFF
/****** Object:  StoredProcedure [dbo].[SP_ThemCatology]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_ThemCatology]
@TenCatology nvarchar(50),
@Maalbum nvarchar(50)
AS
BEGIN
	INSERT INTO Catology VALUES(@TenCatology,@Maalbum)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoadCatology]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LoadCatology]
@Maalbum int
AS
BEGIN
	SELECT TenCatology FROM Catology c,Album a
	WHERE c.Maalbum=@Maalbum
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOACATOLOGY]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOACATOLOGY]
@MaCatology int
AS
BEGIN
	DELETE Catology
	WHERE MaCatology=@MaCatology
END
GO
/****** Object:  View [dbo].[V_Hinhanh]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_Hinhanh]
AS
SELECT     dbo.Picture.Mahinhanh, dbo.Picture.Tenhinhanh, dbo.Picture.Ngayluu, dbo.Picture.MaCatology, dbo.Picture.Hinhanh, dbo.Album.Maalbum, dbo.Users.ID
FROM         dbo.Picture INNER JOIN
                      dbo.Catology ON dbo.Picture.MaCatology = dbo.Catology.MaCatology INNER JOIN
                      dbo.Album ON dbo.Catology.Maalbum = dbo.Album.Maalbum INNER JOIN
                      dbo.Users ON dbo.Album.ID = dbo.Users.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[20] 3) )"
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
         Begin Table = "Picture"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 126
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Catology"
            Begin Extent = 
               Top = 6
               Left = 236
               Bottom = 111
               Right = 396
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Album"
            Begin Extent = 
               Top = 6
               Left = 434
               Bottom = 111
               Right = 594
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Users"
            Begin Extent = 
               Top = 6
               Left = 632
               Bottom = 126
               Right = 792
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
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Hinhanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Hinhanh'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_Hinhanh'
GO
/****** Object:  StoredProcedure [dbo].[SP_Timkiemanh]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE SP_Timkiemanh
--@keywords nvarchar(50)
--AS
--BEGIN
--	SELECT * FROM Picture
--	WHERE Mahinhanh like N'%'+@keywords+'%' or Tenhinhanh like N'%'+@keywords+'%' or Kichthuoc like N'%'+@keywords+'%' 
--			or Tieucu like N'%'+@keywords+'%' or Ghichu like N'%'+@keywords+'%' or MaCatology like N'%'+@keywords+'%' or Ngayluu like N'%'+@keywords+'%'
--END

--CREATE PROCEDURE SP_Timkiemanh
--@keywords nvarchar(50),
--@ID nvarchar(50)
--AS
--BEGIN 
--	SELECT Mahinhanh,Tenhinhanh,Kichthuoc,Tieucu,Ngayluu,Hinhanh,c.MaCatology,a.Tenalbum,Ghichu FROM Picture p,Catology c,Album a,Users u
--	WHERE c.MaCatology=p.MaCatology and a.Maalbum=c.Maalbum and u.ID=a.ID and a.ID=@ID
--	and Mahinhanh like N'%'+@keywords+'%' or Tenhinhanh like N'%'+@keywords+'%' or Kichthuoc like N'%'+@keywords+'%' 
--	or Tieucu like N'%'+@keywords+'%' or Ghichu like N'%'+@keywords+'%' or p.MaCatology like N'%'+@keywords+'%' or Ngayluu like N'%'+@keywords+'%' or a.Tenalbum like N'%'+@keywords+'%'
--END

CREATE PROCEDURE [dbo].[SP_Timkiemanh]
@keywords nvarchar(50),
@ID nvarchar(50)
AS
BEGIN 

	SELECT Mahinhanh,Tenhinhanh,Kichthuoc,Tieucu,Ngayluu,Hinhanh,c.MaCatology,TenCatology,a.Tenalbum,Ghichu
	FROM Picture p,Catology c,Album a,Users u
	WHERE c.MaCatology=p.MaCatology and a.Maalbum=c.Maalbum and u.ID=a.ID and a.ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LoadHinhanh]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LoadHinhanh]
AS
BEGIN
	SELECT Mahinhanh,Tenhinhanh,Kichthuoc,Tieucu,Ngayluu,Ghichu,Hinhanh,p.MaCatology FROM Picture p ,Catology c,Album a,Users u
	WHERE p.MaCatology = c.MaCatology and c.Maalbum = a.Maalbum and u.ID = a.ID
END
GO
/****** Object:  StoredProcedure [dbo].[SP_THEMHINHANH]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_THEMHINHANH]
@Tenhinhanh nvarchar(50),
@Kichthuoc char(10),
@Tieucu char(10),
@Ngayluu varchar(50),
@Macatology nvarchar(50),
@Hinhanh varchar(MAX),
@Ghichu nvarchar(50),
@Setpublic nvarchar(50)
as
begin
	insert into Picture values(@Tenhinhanh,@Kichthuoc,@Tieucu,@Ngayluu,@Macatology,@Hinhanh,@Ghichu,@Setpublic)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEHINHANH]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATEHINHANH]
@Tenhinhanh nvarchar(50),
@Kichthuoc char(10),
@Tieucu char(10),
@Ngayluu varchar(50),
@Macatology nvarchar(50),
@Hinhanh varchar(MAX),
@Ghichu nvarchar(50),
@Setpublic nvarchar(50),
@Mahinhanh nvarchar(50)

AS
BEGIN
		UPDATE Picture set Tenhinhanh=@Tenhinhanh,Kichthuoc=@Kichthuoc,Tieucu=@Tieucu,Ngayluu=@Ngayluu, MaCatology=@Macatology,Ghichu=@Ghichu,Setpublic = @Setpublic,Hinhanh = @Hinhanh
		WHERE Mahinhanh = @Mahinhanh
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_XOAHINHANH]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOAHINHANH]
@Mahinhanh int
AS
BEGIN
	DELETE Picture
	WHERE Mahinhanh=@Mahinhanh
END
GO
/****** Object:  Table [dbo].[Anhdecu]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anhdecu](
	[Madecu] [int] IDENTITY(1,1) NOT NULL,
	[Mahinhanh] [int] NULL,
	[Matrienlam] [int] NULL,
	[Giaban] [int] NULL,
 CONSTRAINT [PK_Anhdecu] PRIMARY KEY CLUSTERED 
(
	[Madecu] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anhdecu] ON
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (33, 92, 24, 0)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (34, 90, 23, 0)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (35, 96, 24, 200000)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (36, 99, 24, 5000000)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (37, 102, 23, 0)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (38, 100, 24, 0)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (39, 101, 24, 0)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (40, 103, 23, 0)
INSERT [dbo].[Anhdecu] ([Madecu], [Mahinhanh], [Matrienlam], [Giaban]) VALUES (41, 98, 23, 4000000)
SET IDENTITY_INSERT [dbo].[Anhdecu] OFF
/****** Object:  Table [dbo].[Binhluan]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Binhluan](
	[Mabinhluan] [int] IDENTITY(1,1) NOT NULL,
	[Hotenbinhluan] [nvarchar](50) NULL,
	[Noidung] [nvarchar](50) NULL,
	[Mahinhanh] [int] NULL,
 CONSTRAINT [PK_Binhluan] PRIMARY KEY CLUSTERED 
(
	[Mabinhluan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Binhluan] ON
INSERT [dbo].[Binhluan] ([Mabinhluan], [Hotenbinhluan], [Noidung], [Mahinhanh]) VALUES (13, N'Quang Sơn', N'Con sói đẹp đó', 92)
INSERT [dbo].[Binhluan] ([Mabinhluan], [Hotenbinhluan], [Noidung], [Mahinhanh]) VALUES (14, N'Trường Cơ', N'Ảnh đẹp', 94)
INSERT [dbo].[Binhluan] ([Mabinhluan], [Hotenbinhluan], [Noidung], [Mahinhanh]) VALUES (15, N'Nhân Nghĩa', N'Cây gì vậy bạn!', 97)
INSERT [dbo].[Binhluan] ([Mabinhluan], [Hotenbinhluan], [Noidung], [Mahinhanh]) VALUES (16, N'Nhân Nghĩa', N'Ai chụp mà đẹp vậy :))', 92)
INSERT [dbo].[Binhluan] ([Mabinhluan], [Hotenbinhluan], [Noidung], [Mahinhanh]) VALUES (17, N'Trường Cơ', N'Hoa này đẹp đó ', 101)
INSERT [dbo].[Binhluan] ([Mabinhluan], [Hotenbinhluan], [Noidung], [Mahinhanh]) VALUES (18, N'Quang Sơn', N'4 Con mèo ngộ nghĩnh ', 99)
SET IDENTITY_INSERT [dbo].[Binhluan] OFF
/****** Object:  Table [dbo].[Anhtrienlam]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Anhtrienlam](
	[Maanhtrienlam] [int] IDENTITY(1,1) NOT NULL,
	[Madecu] [int] NULL,
 CONSTRAINT [PK_Anhtrienlam] PRIMARY KEY CLUSTERED 
(
	[Maanhtrienlam] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Anhtrienlam] ON
INSERT [dbo].[Anhtrienlam] ([Maanhtrienlam], [Madecu]) VALUES (24, 33)
INSERT [dbo].[Anhtrienlam] ([Maanhtrienlam], [Madecu]) VALUES (25, 34)
INSERT [dbo].[Anhtrienlam] ([Maanhtrienlam], [Madecu]) VALUES (26, 35)
INSERT [dbo].[Anhtrienlam] ([Maanhtrienlam], [Madecu]) VALUES (27, 36)
INSERT [dbo].[Anhtrienlam] ([Maanhtrienlam], [Madecu]) VALUES (28, 37)
INSERT [dbo].[Anhtrienlam] ([Maanhtrienlam], [Madecu]) VALUES (29, 38)
SET IDENTITY_INSERT [dbo].[Anhtrienlam] OFF
/****** Object:  StoredProcedure [dbo].[SP_BinhLuan]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_BinhLuan]
@Hotenbinhluan nvarchar(50),
@Noidung nvarchar(50),
@Mahinhanh nvarchar(50)
AS
BEGIN
	INSERT INTO Binhluan values(@Hotenbinhluan,@Noidung,@Mahinhanh)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Anhdecu]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Anhdecu]
@Mahinhanh nvarchar(50),
@Matrienlam nvarchar(50),
@Giaban nvarchar(50)
AS
BEGIN
	INSERT INTO Anhdecu VALUES(@Mahinhanh,@Matrienlam,@Giaban)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_KTDecu]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KTDecu]
@Mahinhanh int
AS
BEGIN
	SELECT * FROM Anhdecu
	WHERE Mahinhanh=@Mahinhanh
END
GO
/****** Object:  StoredProcedure [dbo].[SP_XOADECU]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_XOADECU]
@Madecu int
AS
BEGIN
	DELETE Anhdecu
	WHERE Madecu=@Madecu
END
GO
/****** Object:  StoredProcedure [dbo].[SP_UPDATEDECU]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_UPDATEDECU]
@Mahinhanh int,
@Tenhinhanh nvarchar(50),
@Ghichu nvarchar(50),
@Giaban int,
@Madecu int
AS
BEGIN
		UPDATE Picture
		set Tenhinhanh=@Tenhinhanh,Ghichu=@Ghichu
		WHERE Mahinhanh=@Mahinhanh

		UPDATE Anhdecu
		set Giaban = @Giaban
		WHERE Madecu = @Madecu
END
RETURN
GO
/****** Object:  StoredProcedure [dbo].[SP_KTDuyetanh]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_KTDuyetanh]
@Madecu int
AS
BEGIN
	SELECT * FROM Anhtrienlam
	WHERE Madecu=@Madecu
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DUYETANHTRIENLAM]    Script Date: 07/24/2016 12:28:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_DUYETANHTRIENLAM]
@Madecu int
AS
BEGIN
	INSERT INTO Anhtrienlam VALUES(@Madecu)
END
GO
/****** Object:  ForeignKey [FK_Album_Users]    Script Date: 07/24/2016 12:28:21 ******/
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Users] FOREIGN KEY([ID])
REFERENCES [dbo].[Users] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Users]
GO
/****** Object:  ForeignKey [FK_Catology_Album]    Script Date: 07/24/2016 12:28:22 ******/
ALTER TABLE [dbo].[Catology]  WITH CHECK ADD  CONSTRAINT [FK_Catology_Album] FOREIGN KEY([Maalbum])
REFERENCES [dbo].[Album] ([Maalbum])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Catology] CHECK CONSTRAINT [FK_Catology_Album]
GO
/****** Object:  ForeignKey [FK_Picture_Catology]    Script Date: 07/24/2016 12:28:22 ******/
ALTER TABLE [dbo].[Picture]  WITH CHECK ADD  CONSTRAINT [FK_Picture_Catology] FOREIGN KEY([MaCatology])
REFERENCES [dbo].[Catology] ([MaCatology])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Picture] CHECK CONSTRAINT [FK_Picture_Catology]
GO
/****** Object:  ForeignKey [FK_Anhdecu_Picture]    Script Date: 07/24/2016 12:28:22 ******/
ALTER TABLE [dbo].[Anhdecu]  WITH CHECK ADD  CONSTRAINT [FK_Anhdecu_Picture] FOREIGN KEY([Mahinhanh])
REFERENCES [dbo].[Picture] ([Mahinhanh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Anhdecu] CHECK CONSTRAINT [FK_Anhdecu_Picture]
GO
/****** Object:  ForeignKey [FK_Anhdecu_Trienlam]    Script Date: 07/24/2016 12:28:22 ******/
ALTER TABLE [dbo].[Anhdecu]  WITH CHECK ADD  CONSTRAINT [FK_Anhdecu_Trienlam] FOREIGN KEY([Matrienlam])
REFERENCES [dbo].[Trienlam] ([Matrienlam])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Anhdecu] CHECK CONSTRAINT [FK_Anhdecu_Trienlam]
GO
/****** Object:  ForeignKey [FK_Binhluan_Picture]    Script Date: 07/24/2016 12:28:22 ******/
ALTER TABLE [dbo].[Binhluan]  WITH CHECK ADD  CONSTRAINT [FK_Binhluan_Picture] FOREIGN KEY([Mahinhanh])
REFERENCES [dbo].[Picture] ([Mahinhanh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Binhluan] CHECK CONSTRAINT [FK_Binhluan_Picture]
GO
/****** Object:  ForeignKey [FK_Anhtrienlam_Anhdecu]    Script Date: 07/24/2016 12:28:22 ******/
ALTER TABLE [dbo].[Anhtrienlam]  WITH CHECK ADD  CONSTRAINT [FK_Anhtrienlam_Anhdecu] FOREIGN KEY([Madecu])
REFERENCES [dbo].[Anhdecu] ([Madecu])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Anhtrienlam] CHECK CONSTRAINT [FK_Anhtrienlam_Anhdecu]
GO
