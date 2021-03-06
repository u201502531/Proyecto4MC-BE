USE [master]
GO
/****** Object:  Database [BARDB]    Script Date: 10/03/2017 01:53:55 ******/
CREATE DATABASE [BARDB] ON  PRIMARY 
( NAME = N'BARDB', FILENAME = N'K:\DATA\BARDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BARDB_log', FILENAME = N'K:\DATA\BARDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BARDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BARDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BARDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BARDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BARDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BARDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BARDB] SET ARITHABORT OFF
GO
ALTER DATABASE [BARDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BARDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BARDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BARDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BARDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BARDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BARDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BARDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BARDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BARDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BARDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [BARDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BARDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BARDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BARDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BARDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BARDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BARDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BARDB] SET  READ_WRITE
GO
ALTER DATABASE [BARDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BARDB] SET  MULTI_USER
GO
ALTER DATABASE [BARDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BARDB] SET DB_CHAINING OFF
GO
USE [BARDB]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 10/03/2017 01:53:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[PhoneNunber] [char](9) NULL,
	[DocumentNumber] [char](8) NULL,
	[Type] [char](1) NULL,
	[Password] [varchar](20) NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([UserId], [LastName], [FirstName], [Email], [PhoneNunber], [DocumentNumber], [Type], [Password], [PostDate]) VALUES (3, N'CASTILLO', N'CARLOS', N'CARLOSDEVELOP@GMAIL.COM', N'987654321', N'45785421', N'1', N'123', CAST(0x0000A7F400000000 AS DateTime))
INSERT [dbo].[Users] ([UserId], [LastName], [FirstName], [Email], [PhoneNunber], [DocumentNumber], [Type], [Password], [PostDate]) VALUES (4, N'LLERENA', N'MANUEL', N'MANUEL@GMAIL.COM', N'987654324', N'45986532', N'1', N'123', CAST(0x0000A7F400000000 AS DateTime))
INSERT [dbo].[Users] ([UserId], [LastName], [FirstName], [Email], [PhoneNunber], [DocumentNumber], [Type], [Password], [PostDate]) VALUES (5, N'ARSE', N'ALFREDO', N'ARCE@GMAIL.COM', N'987654329', N'45876548', N'2', N'123', CAST(0x0000A7F400000000 AS DateTime))
INSERT [dbo].[Users] ([UserId], [LastName], [FirstName], [Email], [PhoneNunber], [DocumentNumber], [Type], [Password], [PostDate]) VALUES (6, N'Carrasco', N'Julia', N'test@gmail.com', N'987654321', N'45781266', N'2', N'123', CAST(0x0000A801000C9B5D AS DateTime))
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Pubs]    Script Date: 10/03/2017 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Pubs](
	[PubId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Description] [varchar](250) NULL,
	[Ruc] [char](11) NULL,
	[Address] [varchar](200) NULL,
	[PhoneNumber] [char](9) NULL,
	[Email] [varchar](50) NULL,
	[Latitude] [varchar](25) NULL,
	[Longitude] [varchar](25) NULL,
 CONSTRAINT [PK_Local_1] PRIMARY KEY CLUSTERED 
(
	[PubId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Pubs] ON
INSERT [dbo].[Pubs] ([PubId], [Name], [Description], [Ruc], [Address], [PhoneNumber], [Email], [Latitude], [Longitude]) VALUES (1, N'LAS HUARINGAS', N'La más atractiva gama de tragos desarrollados a base del Pisco Peruano', N'20141516171', N'Óvalo Bolognesi, Restaurante Brujas de Cachiche', N'2222147  ', N'pedidos@brujasdecachiche.com.pe', N'12.145222', N'-72.26565')
INSERT [dbo].[Pubs] ([PubId], [Name], [Description], [Ruc], [Address], [PhoneNumber], [Email], [Latitude], [Longitude]) VALUES (4, N'BIZARRO BAR', N' Especialidades como Pisco Punch, Sexo on the City, y clasicos como Sours, Gin Tonic, Mojito entre otros.', N'20142536854', N'Ca. Francisco de Paula Camino 220 (esquina con Bellavista).', N'4463508  ', N'pedidos@bizarrobar.com', N'12.253625', N'-75.143625')
INSERT [dbo].[Pubs] ([PubId], [Name], [Description], [Ruc], [Address], [PhoneNumber], [Email], [Latitude], [Longitude]) VALUES (5, N'AYAHUASCA BAR', N'No dejes de probar sus machacados, hechos con frutas y macerados de pisco, las causitas y los makis de su cocina fusión', N'20152541515', N'Prolongación San Martín 130, Barranco.', N'981044745', N'pedidos@ayahuascarestobar.com', NULL, NULL)
INSERT [dbo].[Pubs] ([PubId], [Name], [Description], [Ruc], [Address], [PhoneNumber], [Email], [Latitude], [Longitude]) VALUES (6, N'PICAS RESTOBAR', N'No puede perderse una noche bajo el Puente de los Suspiros, disfrutando de un trago hecho de pisco macerado con uña de gato, jugo de naranja, maracuya, jarabe de goma y hielo.', N'20151115122', N'Bajada de Baños 340. - Barranco', N'2528095  ', N'pedidos@picas.com.pe', NULL, NULL)
INSERT [dbo].[Pubs] ([PubId], [Name], [Description], [Ruc], [Address], [PhoneNumber], [Email], [Latitude], [Longitude]) VALUES (7, N'EL QUEIROLO', N' Disfrute de sus tradicionales pisco sours, macerados y chilcanos, acompañados con sus inigualables sánguches de jamón casero.', N'20145151555', N'San Martín 1002.', N'2264463  ', N'pedidos@antiguatabernaqueirolo.com', NULL, NULL)
INSERT [dbo].[Pubs] ([PubId], [Name], [Description], [Ruc], [Address], [PhoneNumber], [Email], [Latitude], [Longitude]) VALUES (8, N'EL BOLIVARIANO', N'Uno de los rincones más antiguos de Pueblo Libre, famoso por sus platos criollos y su carta de tragos.', N'20151520202', N'Rosa Toledo 289-291.', N'2619565  ', N'pedidos@elbolivariano.com', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Pubs] OFF
/****** Object:  Table [dbo].[PubUsers]    Script Date: 10/03/2017 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PubUsers](
	[PubId] [int] NULL,
	[UserId] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[PubUsers] ([PubId], [UserId]) VALUES (1, 3)
INSERT [dbo].[PubUsers] ([PubId], [UserId]) VALUES (4, 4)
/****** Object:  Table [dbo].[Products]    Script Date: 10/03/2017 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[PubId] [int] NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](250) NULL,
	[Price] [numeric](18, 2) NULL,
	[type] [char](1) NULL,
	[Image] [varchar](50) NULL,
	[OverallTime] [time](7) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ProductId], [PubId], [Name], [Description], [Price], [type], [Image], [OverallTime]) VALUES (1, 1, N'PISCO SOUR', N'VASO DE PISCO SOUR POR 200ML', CAST(20.10 AS Numeric(18, 2)), N'1', NULL, CAST(0x07005ED0B2000000 AS Time))
INSERT [dbo].[Products] ([ProductId], [PubId], [Name], [Description], [Price], [type], [Image], [OverallTime]) VALUES (2, 1, N'VODKA RUSKAYA', N'BOTELLA DE 500ML', CAST(90.30 AS Numeric(18, 2)), N'2', NULL, CAST(0x0700752B7D000000 AS Time))
SET IDENTITY_INSERT [dbo].[Products] OFF
/****** Object:  Table [dbo].[SalesOrders]    Script Date: 10/03/2017 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrders](
	[SalesOrderId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[PubId] [int] NULL,
	[OrderDate] [datetime] NULL,
	[Status] [char](1) NULL,
	[WaitTime] [char](5) NULL,
	[AtentionTime] [nchar](5) NULL,
 CONSTRAINT [PK_SalesOrder] PRIMARY KEY CLUSTERED 
(
	[SalesOrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SalesOrders] ON
INSERT [dbo].[SalesOrders] ([SalesOrderId], [UserId], [PubId], [OrderDate], [Status], [WaitTime], [AtentionTime]) VALUES (2, 3, 1, CAST(0x0000A80100138E01 AS DateTime), N'3', N'10:00', N'15:00')
SET IDENTITY_INSERT [dbo].[SalesOrders] OFF
/****** Object:  Table [dbo].[SalesOrderDetails]    Script Date: 10/03/2017 01:53:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetails](
	[SalesOrderDetailId] [int] IDENTITY(1,1) NOT NULL,
	[SalesOrderId] [int] NULL,
	[ProductId] [int] NULL,
	[UnitPrice] [numeric](18, 2) NULL,
	[Quantity] [smallint] NULL,
 CONSTRAINT [PK_SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[SalesOrderDetailId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SalesOrderDetails] ON
INSERT [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (1, 2, 1, CAST(20.00 AS Numeric(18, 2)), 2)
INSERT [dbo].[SalesOrderDetails] ([SalesOrderDetailId], [SalesOrderId], [ProductId], [UnitPrice], [Quantity]) VALUES (2, 2, 2, CAST(20.00 AS Numeric(18, 2)), 2)
SET IDENTITY_INSERT [dbo].[SalesOrderDetails] OFF
/****** Object:  ForeignKey [FK_LocalUser_User]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[PubUsers]  WITH CHECK ADD  CONSTRAINT [FK_LocalUser_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PubUsers] CHECK CONSTRAINT [FK_LocalUser_User]
GO
/****** Object:  ForeignKey [FK_PubUsers_Pubs]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[PubUsers]  WITH CHECK ADD  CONSTRAINT [FK_PubUsers_Pubs] FOREIGN KEY([PubId])
REFERENCES [dbo].[Pubs] ([PubId])
GO
ALTER TABLE [dbo].[PubUsers] CHECK CONSTRAINT [FK_PubUsers_Pubs]
GO
/****** Object:  ForeignKey [FK_Product_Pubs]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Pubs] FOREIGN KEY([PubId])
REFERENCES [dbo].[Pubs] ([PubId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Pubs]
GO
/****** Object:  ForeignKey [FK_SalesOrder_User]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_SalesOrder_User]
GO
/****** Object:  ForeignKey [FK_SalesOrders_Pubs]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrders_Pubs] FOREIGN KEY([PubId])
REFERENCES [dbo].[Pubs] ([PubId])
GO
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_SalesOrders_Pubs]
GO
/****** Object:  ForeignKey [FK_SalesOrderDetail_Product]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[SalesOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[SalesOrderDetails] CHECK CONSTRAINT [FK_SalesOrderDetail_Product]
GO
/****** Object:  ForeignKey [FK_SalesOrderDetail_SalesOrder]    Script Date: 10/03/2017 01:53:57 ******/
ALTER TABLE [dbo].[SalesOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_SalesOrder] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[SalesOrders] ([SalesOrderId])
GO
ALTER TABLE [dbo].[SalesOrderDetails] CHECK CONSTRAINT [FK_SalesOrderDetail_SalesOrder]
GO
