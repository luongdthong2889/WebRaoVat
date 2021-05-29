USE [master]
GO
/****** Object:  Database [DBRaoVat]    Script Date: 15-May-21 7:01:31 PM ******/
CREATE DATABASE [DBRaoVat]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBRaoVat', FILENAME = N'D:\source\cnpmnc\WebRaoVat\Database\DATA\DBRaoVat.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DBRaoVat_log', FILENAME = N'D:\source\cnpmnc\WebRaoVat\Database\DATA\DBRaoVat_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [DBRaoVat] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBRaoVat].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBRaoVat] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBRaoVat] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBRaoVat] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBRaoVat] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBRaoVat] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBRaoVat] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBRaoVat] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBRaoVat] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBRaoVat] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBRaoVat] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBRaoVat] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBRaoVat] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBRaoVat] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBRaoVat] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBRaoVat] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBRaoVat] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBRaoVat] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBRaoVat] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBRaoVat] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBRaoVat] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBRaoVat] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DBRaoVat] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBRaoVat] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBRaoVat] SET  MULTI_USER 
GO
ALTER DATABASE [DBRaoVat] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBRaoVat] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBRaoVat] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBRaoVat] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DBRaoVat] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBRaoVat] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DBRaoVat] SET QUERY_STORE = OFF
GO
USE [DBRaoVat]
GO
/****** Object:  Table [dbo].[CATEGORY]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATEGORY](
	[MALOAI] [int] IDENTITY(1,1) NOT NULL,
	[TENLOAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED 
(
	[MALOAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HINHTHUC]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HINHTHUC](
	[MAHINHTHUC] [int] NOT NULL,
	[HINHTHUC] [nvarchar](50) NULL,
 CONSTRAINT [PK_HINHTHUC] PRIMARY KEY CLUSTERED 
(
	[MAHINHTHUC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAITIN]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAITIN](
	[MALOAITIN] [int] NOT NULL,
	[LOAITIN] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAITIN] PRIMARY KEY CLUSTERED 
(
	[MALOAITIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RAOVAT]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RAOVAT](
	[MATIN] [int] IDENTITY(1,1) NOT NULL,
	[MATRANGTHAI] [int] NOT NULL,
	[MALOAI] [int] NOT NULL,
	[MATINHTRANG] [int] NOT NULL,
	[MALOAITIN] [int] NOT NULL,
	[MAHINHTHUC] [int] NOT NULL,
	[MANGUOIDUNG] [int] NOT NULL,
	[TIEUDE] [nvarchar](max) NULL,
	[HINHANH1] [nvarchar](100) NULL,
	[NOIDUNG] [nvarchar](max) NULL,
	[NGAYGIODANG] [datetime] NULL,
	[GIA] [int] NULL,
	[DIACHI] [nvarchar](max) NULL,
	[NGAYHETHAN] [datetime] NULL,
 CONSTRAINT [PK_RAOVAT] PRIMARY KEY CLUSTERED 
(
	[MATIN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TINHTRANG]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINHTRANG](
	[MATINHTRANG] [int] NOT NULL,
	[TINHTRANG] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINHTRANG] PRIMARY KEY CLUSTERED 
(
	[MATINHTRANG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANGTHAI]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANGTHAI](
	[MATRANGTHAI] [int] NOT NULL,
	[TRANGTHAI] [nvarchar](50) NULL,
 CONSTRAINT [PK_TRANGTHAI] PRIMARY KEY CLUSTERED 
(
	[MATRANGTHAI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USER]    Script Date: 15-May-21 7:01:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USER](
	[MANGUOIDUNG] [int] IDENTITY(1,1) NOT NULL,
	[TENDANGNHAP] [nvarchar](50) NULL,
	[MATKHAU] [nvarchar](50) NULL,
	[SODIENTHOAI] [nvarchar](20) NULL,
 CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED 
(
	[MANGUOIDUNG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CATEGORY] ON 

INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (1, N'Xe')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (2, N'Đồ điện tử')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (3, N'Hôn nhân')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (4, N'Nội thất')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (5, N'Công việc')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (6, N'Địa ốc')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (7, N'Sức khỏe và làm đẹp')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (8, N'Thời trang')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (9, N'Giáo dục')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (10, N'Dụng cụ')
INSERT [dbo].[CATEGORY] ([MALOAI], [TENLOAI]) VALUES (11, N'Du lịch')
SET IDENTITY_INSERT [dbo].[CATEGORY] OFF
GO
INSERT [dbo].[HINHTHUC] ([MAHINHTHUC], [HINHTHUC]) VALUES (1, N'Cần Bán')
INSERT [dbo].[HINHTHUC] ([MAHINHTHUC], [HINHTHUC]) VALUES (2, N'Tìm Kiếm')
GO
INSERT [dbo].[LOAITIN] ([MALOAITIN], [LOAITIN]) VALUES (1, N'Thường')
GO
SET IDENTITY_INSERT [dbo].[RAOVAT] ON 

INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (1, 1, 2, 1, 1, 1, 1, N'Bán điện thoại iphone x', N'~/Content/img/img1.jpg', N'Cần bán điện thoại iphone x', CAST(N'2021-05-02T12:00:00.000' AS DateTime), 10000000, N'5 Dương Bạch Mai TPHCM Quận 8', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (2, 1, 1, 1, 1, 1, 1, N'Bán xe 4 chỗ toyota như mới', N'~/Content/img/img4.jpg', N'xe màu trắng xài được 2 tháng cần bán', CAST(N'2021-02-05T10:00:00.000' AS DateTime), 200000000, N'5 Dương Bạch Mai TPHCM Quận 8', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (4, 1, 2, 1, 1, 1, 1, N'Bán laptop hiệu dell 15.6"', N'~/Content/img/img5.jpg', N'Laptop màu trắng đẹp như mới 99%', CAST(N'2021-05-02T03:00:00.000' AS DateTime), 15000000, N'5 Dương Bạch Mai TPHCM Quận 8', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (5, 1, 4, 1, 1, 1, 1, N'Bán giường kiểu vừa', N'~/Content/img/img2.jpg', N'Như mới vừa mua sử dụng được 1 tháng', CAST(N'2021-05-02T12:00:00.000' AS DateTime), 6000000, N'5 Dương Bạch Mai TPHCM Quận 8', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (7, 1, 2, 1, 1, 1, 1, N'Tìm mua camera', N'~/Content/img/img3.jpg', N'Cần mua camera giống hình ai có thì liên hệ số điện thoại em', CAST(N'2021-05-02T01:00:00.000' AS DateTime), 10000000, N'5 Dương Bạch Mai TPHCM Quận 8', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (8, 1, 8, 1, 1, 1, 1, N'Bán đồng hồ rolex', N'~/Content/img/feature-3.jpg', N'Đồng hồ như mới siêu đẹp giá rẻ', CAST(N'2021-05-02T04:00:00.000' AS DateTime), 200000, N'5 Dương Bạch Mai TPHCM Quận 8', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (9, 1, 2, 1, 1, 1, 2, N'Bán Laptop', N'~/Content/img/test-laptop1.jpg', N'laptop cấu hình khủng 99%', CAST(N'2021-06-02T03:00:00.000' AS DateTime), 100000000, N'1107/12/17/8 Dương Bạch Mai Phường 5 Quận 8 TPHCM', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (16, 1, 1, 1, 1, 1, 1, N'test', N'~/Content/img/upload-i.jpg', N'test', CAST(N'2021-05-02T00:00:00.000' AS DateTime), 1, N'test2', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (21, 2, 9, 2, 1, 2, 1, N'asdasd', N'~/Content/img/upload-i.jpg', N'asdasda', NULL, 2, N'sadasdwdaaaaaaaaaaaaaa', NULL)
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (23, 1, 2, 2, 1, 2, 2, N'aaaaaaaaaaaaaaaaaaaaaaaaa', N'~/Content/img/abcasd.jpg', N'asdawdaawd', CAST(N'2021-05-15T12:30:32.707' AS DateTime), 123, N'adwadsazxzc', CAST(N'2021-05-18T16:35:00.000' AS DateTime))
INSERT [dbo].[RAOVAT] ([MATIN], [MATRANGTHAI], [MALOAI], [MATINHTRANG], [MALOAITIN], [MAHINHTHUC], [MANGUOIDUNG], [TIEUDE], [HINHANH1], [NOIDUNG], [NGAYGIODANG], [GIA], [DIACHI], [NGAYHETHAN]) VALUES (24, 1, 11, 2, 1, 2, 2, N'aaaaaaaaaaaaaaaaaaaaaaaaa123124', N'~/Content/img/180203113_807151833488305_8771812887970903985_n.jpg', N'124asdsa', CAST(N'2021-05-15T12:32:29.987' AS DateTime), 1234, N'adwadsazxzc', CAST(N'2021-05-27T17:37:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[RAOVAT] OFF
GO
INSERT [dbo].[TINHTRANG] ([MATINHTRANG], [TINHTRANG]) VALUES (1, N'Hàng Mới')
INSERT [dbo].[TINHTRANG] ([MATINHTRANG], [TINHTRANG]) VALUES (2, N'Hàng Đã Qua Sử Dụng')
GO
INSERT [dbo].[TRANGTHAI] ([MATRANGTHAI], [TRANGTHAI]) VALUES (1, N'ĐÃ DUYỆT')
INSERT [dbo].[TRANGTHAI] ([MATRANGTHAI], [TRANGTHAI]) VALUES (2, N'CHƯA DUYỆT')
GO
SET IDENTITY_INSERT [dbo].[USER] ON 

INSERT [dbo].[USER] ([MANGUOIDUNG], [TENDANGNHAP], [MATKHAU], [SODIENTHOAI]) VALUES (1, N'Huy', N'123a', N'0377927947')
INSERT [dbo].[USER] ([MANGUOIDUNG], [TENDANGNHAP], [MATKHAU], [SODIENTHOAI]) VALUES (2, N'Fat', N'123a', N'0349231562')
SET IDENTITY_INSERT [dbo].[USER] OFF
GO
ALTER TABLE [dbo].[RAOVAT]  WITH CHECK ADD  CONSTRAINT [FK_RAOVAT_CATEGORY] FOREIGN KEY([MALOAI])
REFERENCES [dbo].[CATEGORY] ([MALOAI])
GO
ALTER TABLE [dbo].[RAOVAT] CHECK CONSTRAINT [FK_RAOVAT_CATEGORY]
GO
ALTER TABLE [dbo].[RAOVAT]  WITH CHECK ADD  CONSTRAINT [FK_RAOVAT_HINHTHUC] FOREIGN KEY([MAHINHTHUC])
REFERENCES [dbo].[HINHTHUC] ([MAHINHTHUC])
GO
ALTER TABLE [dbo].[RAOVAT] CHECK CONSTRAINT [FK_RAOVAT_HINHTHUC]
GO
ALTER TABLE [dbo].[RAOVAT]  WITH CHECK ADD  CONSTRAINT [FK_RAOVAT_LOAITIN] FOREIGN KEY([MALOAITIN])
REFERENCES [dbo].[LOAITIN] ([MALOAITIN])
GO
ALTER TABLE [dbo].[RAOVAT] CHECK CONSTRAINT [FK_RAOVAT_LOAITIN]
GO
ALTER TABLE [dbo].[RAOVAT]  WITH CHECK ADD  CONSTRAINT [FK_RAOVAT_TINHTRANG] FOREIGN KEY([MATINHTRANG])
REFERENCES [dbo].[TINHTRANG] ([MATINHTRANG])
GO
ALTER TABLE [dbo].[RAOVAT] CHECK CONSTRAINT [FK_RAOVAT_TINHTRANG]
GO
ALTER TABLE [dbo].[RAOVAT]  WITH CHECK ADD  CONSTRAINT [FK_RAOVAT_TRANGTHAI] FOREIGN KEY([MATRANGTHAI])
REFERENCES [dbo].[TRANGTHAI] ([MATRANGTHAI])
GO
ALTER TABLE [dbo].[RAOVAT] CHECK CONSTRAINT [FK_RAOVAT_TRANGTHAI]
GO
ALTER TABLE [dbo].[RAOVAT]  WITH CHECK ADD  CONSTRAINT [FK_RAOVAT_USER] FOREIGN KEY([MANGUOIDUNG])
REFERENCES [dbo].[USER] ([MANGUOIDUNG])
GO
ALTER TABLE [dbo].[RAOVAT] CHECK CONSTRAINT [FK_RAOVAT_USER]
GO
USE [master]
GO
ALTER DATABASE [DBRaoVat] SET  READ_WRITE 
GO
