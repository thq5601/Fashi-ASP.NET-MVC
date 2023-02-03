
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/09/2021 20:57:14
-- Generated from EDMX file: C:\Users\dell\Desktop\Asp.net\NguyenDinhNhi_2118110046\Fashi\Context\fashi.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [fashi];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[bannersection]', 'U') IS NOT NULL
    DROP TABLE [dbo].[bannersection];
GO
IF OBJECT_ID(N'[dbo].[blog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[blog];
GO
IF OBJECT_ID(N'[dbo].[categorys]', 'U') IS NOT NULL
    DROP TABLE [dbo].[categorys];
GO
IF OBJECT_ID(N'[dbo].[Customers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Customers];
GO
IF OBJECT_ID(N'[dbo].[instagram]', 'U') IS NOT NULL
    DROP TABLE [dbo].[instagram];
GO
IF OBJECT_ID(N'[dbo].[latest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[latest];
GO
IF OBJECT_ID(N'[dbo].[lh1]', 'U') IS NOT NULL
    DROP TABLE [dbo].[lh1];
GO
IF OBJECT_ID(N'[dbo].[lh2]', 'U') IS NOT NULL
    DROP TABLE [dbo].[lh2];
GO
IF OBJECT_ID(N'[dbo].[lh3]', 'U') IS NOT NULL
    DROP TABLE [dbo].[lh3];
GO
IF OBJECT_ID(N'[dbo].[lh4]', 'U') IS NOT NULL
    DROP TABLE [dbo].[lh4];
GO
IF OBJECT_ID(N'[dbo].[manbanner]', 'U') IS NOT NULL
    DROP TABLE [dbo].[manbanner];
GO
IF OBJECT_ID(N'[dbo].[manlarge]', 'U') IS NOT NULL
    DROP TABLE [dbo].[manlarge];
GO
IF OBJECT_ID(N'[dbo].[menus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[menus];
GO
IF OBJECT_ID(N'[dbo].[partners]', 'U') IS NOT NULL
    DROP TABLE [dbo].[partners];
GO
IF OBJECT_ID(N'[dbo].[products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[products];
GO
IF OBJECT_ID(N'[dbo].[slides]', 'U') IS NOT NULL
    DROP TABLE [dbo].[slides];
GO
IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[womenbanner]', 'U') IS NOT NULL
    DROP TABLE [dbo].[womenbanner];
GO
IF OBJECT_ID(N'[dbo].[womenlarge]', 'U') IS NOT NULL
    DROP TABLE [dbo].[womenlarge];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'bannersections'
CREATE TABLE [dbo].[bannersections] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [ten] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'blogs'
CREATE TABLE [dbo].[blogs] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [ngay] datetime  NOT NULL,
    [comment] nvarchar(255)  NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [mieuta] nvarchar(255)  NOT NULL,
    [chitiet] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'categorys'
CREATE TABLE [dbo].[categorys] (
    [id] int IDENTITY(1,1) NOT NULL,
    [ten] nvarchar(255)  NOT NULL,
    [link] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'instagrams'
CREATE TABLE [dbo].[instagrams] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [mieuta] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'lh1'
CREATE TABLE [dbo].[lh1] (
    [id] int IDENTITY(1,1) NOT NULL,
    [thongtin] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'lh2'
CREATE TABLE [dbo].[lh2] (
    [id] int IDENTITY(1,1) NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [icon] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'lh3'
CREATE TABLE [dbo].[lh3] (
    [id] int IDENTITY(1,1) NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [muc] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'lh4'
CREATE TABLE [dbo].[lh4] (
    [id] int IDENTITY(1,1) NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [muc] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'manbanners'
CREATE TABLE [dbo].[manbanners] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [sale] nvarchar(255)  NOT NULL,
    [link1] nvarchar(255)  NULL,
    [link2] nvarchar(255)  NULL,
    [thaotac] nvarchar(255)  NULL,
    [link3] nvarchar(255)  NULL,
    [theloai] nvarchar(255)  NOT NULL,
    [link4] nvarchar(255)  NULL,
    [mieuta] nvarchar(255)  NOT NULL,
    [giaban] float  NOT NULL,
    [giagiam] float  NULL
);
GO

-- Creating table 'manlarges'
CREATE TABLE [dbo].[manlarges] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [ten] nvarchar(255)  NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [mieuta] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'menus'
CREATE TABLE [dbo].[menus] (
    [id] int IDENTITY(1,1) NOT NULL,
    [ten] nvarchar(255)  NOT NULL,
    [link] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'partners'
CREATE TABLE [dbo].[partners] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'slides'
CREATE TABLE [dbo].[slides] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [ten] nvarchar(255)  NOT NULL,
    [tensk] nvarchar(255)  NOT NULL,
    [chitiet] nvarchar(255)  NOT NULL,
    [cuahang] nvarchar(255)  NOT NULL,
    [tenchuongtrinh] nvarchar(255)  NOT NULL,
    [phantram] int  NOT NULL
);
GO

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table 'womenbanners'
CREATE TABLE [dbo].[womenbanners] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [sale] nvarchar(255)  NULL,
    [link1] nvarchar(255)  NULL,
    [link2] nvarchar(255)  NULL,
    [thaotac] nvarchar(255)  NULL,
    [link3] nvarchar(255)  NULL,
    [theloai] nvarchar(255)  NULL,
    [link4] nvarchar(255)  NULL,
    [mieuta] nvarchar(255)  NULL,
    [giaban] float  NOT NULL,
    [giagiam] float  NOT NULL
);
GO

-- Creating table 'womenlarges'
CREATE TABLE [dbo].[womenlarges] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [ten] nvarchar(255)  NULL,
    [link] nvarchar(255)  NULL,
    [mieuta] nvarchar(255)  NULL
);
GO

-- Creating table 'latests'
CREATE TABLE [dbo].[latests] (
    [id] int IDENTITY(1,1) NOT NULL,
    [anh] nvarchar(255)  NOT NULL,
    [ngay] datetime  NOT NULL,
    [link] nvarchar(255)  NOT NULL,
    [mieuta] nvarchar(255)  NOT NULL,
    [chitiet] nvarchar(255)  NOT NULL
);
GO

-- Creating table 'Customers'
CREATE TABLE [dbo].[Customers] (
    [Id] nvarchar(20)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL,
    [Fullname] nvarchar(50)  NOT NULL,
    [Email] nvarchar(50)  NOT NULL,
    [Photo] nvarchar(50)  NOT NULL,
    [Activated] bit  NOT NULL
);
GO

-- Creating table 'products'
CREATE TABLE [dbo].[products] (
    [id] int IDENTITY(1,1) NOT NULL,
    [id_categorys] int  NULL,
    [size] nvarchar(255)  NOT NULL,
    [ten] nvarchar(255)  NOT NULL,
    [soluong] int  NULL,
    [giaban] int  NULL,
    [giagiam] int  NULL,
    [phantram] int  NULL,
    [mieuta] nvarchar(255)  NULL,
    [chitiet] nvarchar(255)  NULL,
    [gioithieu] nvarchar(255)  NULL,
    [dactrung] nvarchar(255)  NULL,
    [anhmh] nvarchar(255)  NOT NULL,
    [cannang] nvarchar(255)  NULL,
    [noibat] bit  NULL,
    [spmoi] bit  NULL,
    [ngaytao] datetime  NOT NULL,
    [ngaycapnhat] datetime  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [id] in table 'bannersections'
ALTER TABLE [dbo].[bannersections]
ADD CONSTRAINT [PK_bannersections]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'blogs'
ALTER TABLE [dbo].[blogs]
ADD CONSTRAINT [PK_blogs]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'categorys'
ALTER TABLE [dbo].[categorys]
ADD CONSTRAINT [PK_categorys]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'instagrams'
ALTER TABLE [dbo].[instagrams]
ADD CONSTRAINT [PK_instagrams]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'lh1'
ALTER TABLE [dbo].[lh1]
ADD CONSTRAINT [PK_lh1]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'lh2'
ALTER TABLE [dbo].[lh2]
ADD CONSTRAINT [PK_lh2]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'lh3'
ALTER TABLE [dbo].[lh3]
ADD CONSTRAINT [PK_lh3]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'lh4'
ALTER TABLE [dbo].[lh4]
ADD CONSTRAINT [PK_lh4]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'manbanners'
ALTER TABLE [dbo].[manbanners]
ADD CONSTRAINT [PK_manbanners]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'manlarges'
ALTER TABLE [dbo].[manlarges]
ADD CONSTRAINT [PK_manlarges]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'menus'
ALTER TABLE [dbo].[menus]
ADD CONSTRAINT [PK_menus]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'partners'
ALTER TABLE [dbo].[partners]
ADD CONSTRAINT [PK_partners]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'slides'
ALTER TABLE [dbo].[slides]
ADD CONSTRAINT [PK_slides]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [id] in table 'womenbanners'
ALTER TABLE [dbo].[womenbanners]
ADD CONSTRAINT [PK_womenbanners]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'womenlarges'
ALTER TABLE [dbo].[womenlarges]
ADD CONSTRAINT [PK_womenlarges]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [id] in table 'latests'
ALTER TABLE [dbo].[latests]
ADD CONSTRAINT [PK_latests]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- Creating primary key on [Id] in table 'Customers'
ALTER TABLE [dbo].[Customers]
ADD CONSTRAINT [PK_Customers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [id] in table 'products'
ALTER TABLE [dbo].[products]
ADD CONSTRAINT [PK_products]
    PRIMARY KEY CLUSTERED ([id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------