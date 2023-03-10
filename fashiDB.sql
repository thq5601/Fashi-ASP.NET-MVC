USE [master]
GO
/****** Object:  Database [fashi]    Script Date: 02/03/2023 10:28:20 PM ******/
CREATE DATABASE [fashi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'fashi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\fashi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'fashi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\fashi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [fashi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [fashi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [fashi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [fashi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [fashi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [fashi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [fashi] SET ARITHABORT OFF 
GO
ALTER DATABASE [fashi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [fashi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [fashi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [fashi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [fashi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [fashi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [fashi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [fashi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [fashi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [fashi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [fashi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [fashi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [fashi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [fashi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [fashi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [fashi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [fashi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [fashi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [fashi] SET  MULTI_USER 
GO
ALTER DATABASE [fashi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [fashi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [fashi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [fashi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [fashi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [fashi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [fashi] SET QUERY_STORE = OFF
GO
USE [fashi]
GO
/****** Object:  Table [dbo].[bannersections]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bannersections](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[ten] [nvarchar](255) NULL,
 CONSTRAINT [PK_bannersections] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[ngay] [datetime] NOT NULL,
	[thongtin1] [nvarchar](255) NULL,
	[mieuta] [nvarchar](255) NULL,
	[chitiet] [nvarchar](255) NULL,
	[thongtin2] [nvarchar](255) NULL,
 CONSTRAINT [PK_blogs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categorys]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categorys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_categorys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [nvarchar](20) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Photo] [nvarchar](50) NULL,
	[Activated] [bit] NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[instagrams]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[instagrams](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[mieuta] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_instagrams] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[latests]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[latests](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[ngay] [datetime] NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[mieuta] [nvarchar](255) NOT NULL,
	[chitiet] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_latests] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lh1]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lh1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[thongtin] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_lh1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lh2]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lh2](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[icon] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_lh2] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lh3]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lh3](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[muc] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_lh3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lh4]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lh4](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[muc] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_lh4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manbanners]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manbanners](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[sale] [nvarchar](255) NOT NULL,
	[link1] [nvarchar](255) NULL,
	[link2] [nvarchar](255) NULL,
	[thaotac] [nvarchar](255) NULL,
	[link3] [nvarchar](255) NULL,
	[theloai] [nvarchar](255) NOT NULL,
	[link4] [nvarchar](255) NULL,
	[mieuta] [nvarchar](255) NOT NULL,
	[giaban] [float] NOT NULL,
	[giagiam] [float] NULL,
 CONSTRAINT [PK_manbanners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manlarges]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manlarges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[mieuta] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_manlarges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[link] [nvarchar](255) NULL,
 CONSTRAINT [PK_menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Gia] [float] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [nvarchar](20) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[NgayNhan] [datetime] NOT NULL,
	[NguoiNhan] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](60) NOT NULL,
	[MieuTa] [nvarchar](1000) NULL,
	[Tien] [float] NOT NULL,
	[TrangThai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[partners]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[partners](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_partners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_categorys] [int] NULL,
	[size] [nvarchar](255) NULL,
	[ten] [nvarchar](255) NOT NULL,
	[soluong] [int] NULL,
	[giaban] [int] NULL,
	[giagiam] [int] NULL,
	[phantram] [int] NULL,
	[mieuta] [nvarchar](255) NULL,
	[chitiet] [nvarchar](255) NULL,
	[gioithieu] [nvarchar](255) NULL,
	[dactrung] [nvarchar](255) NULL,
	[anhmh] [nvarchar](255) NOT NULL,
	[cannang] [nvarchar](255) NULL,
	[noibat] [bit] NULL,
	[spmoi] [bit] NULL,
	[ngaytao] [datetime] NULL,
	[ngaycapnhat] [datetime] NULL,
 CONSTRAINT [PK_products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slides]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slides](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[ten] [nvarchar](255) NOT NULL,
	[tensk] [nvarchar](255) NOT NULL,
	[chitiet] [nvarchar](255) NOT NULL,
	[cuahang] [nvarchar](255) NOT NULL,
	[tenchuongtrinh] [nvarchar](255) NOT NULL,
	[phantram] [int] NOT NULL,
 CONSTRAINT [PK_slides] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[womenbanners]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[womenbanners](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[sale] [nvarchar](255) NULL,
	[link1] [nvarchar](255) NULL,
	[link2] [nvarchar](255) NULL,
	[thaotac] [nvarchar](255) NULL,
	[link3] [nvarchar](255) NULL,
	[theloai] [nvarchar](255) NULL,
	[link4] [nvarchar](255) NULL,
	[mieuta] [nvarchar](255) NULL,
	[giaban] [float] NOT NULL,
	[giagiam] [float] NOT NULL,
 CONSTRAINT [PK_womenbanners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[womenlarges]    Script Date: 02/03/2023 10:28:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[womenlarges](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[anh] [nvarchar](255) NOT NULL,
	[ten] [nvarchar](255) NULL,
	[link] [nvarchar](255) NULL,
	[mieuta] [nvarchar](255) NULL,
 CONSTRAINT [PK_womenlarges] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
GO
ALTER TABLE [dbo].[products]  WITH CHECK ADD  CONSTRAINT [FK_products_categorys] FOREIGN KEY([id_categorys])
REFERENCES [dbo].[categorys] ([id])
GO
ALTER TABLE [dbo].[products] CHECK CONSTRAINT [FK_products_categorys]
GO
USE [master]
GO
ALTER DATABASE [fashi] SET  READ_WRITE 
GO
