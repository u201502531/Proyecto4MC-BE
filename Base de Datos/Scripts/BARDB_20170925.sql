USE [master]
GO
/****** Object:  Database [BARDB]    Script Date: 09/26/2017 00:36:04 ******/
CREATE DATABASE [BARDB] ON  PRIMARY 
( NAME = N'BARDB', FILENAME = N'C:\DATA\BARDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BARDB_log', FILENAME = N'C:\DATA\BARDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  ForeignKey [FK_LocalUser_User]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[PubUsers] DROP CONSTRAINT [FK_LocalUser_User]
GO
/****** Object:  ForeignKey [FK_PubUsers_Pubs]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[PubUsers] DROP CONSTRAINT [FK_PubUsers_Pubs]
GO
/****** Object:  ForeignKey [FK_Product_Pubs]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Product_Pubs]
GO
/****** Object:  ForeignKey [FK_SalesOrder_Pubs]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [FK_SalesOrder_Pubs]
GO
/****** Object:  ForeignKey [FK_SalesOrder_User]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [FK_SalesOrder_User]
GO
/****** Object:  ForeignKey [FK_SalesOrderDetail_Product]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrderDetails] DROP CONSTRAINT [FK_SalesOrderDetail_Product]
GO
/****** Object:  ForeignKey [FK_SalesOrderDetail_SalesOrder]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrderDetails] DROP CONSTRAINT [FK_SalesOrderDetail_SalesOrder]
GO
/****** Object:  Table [dbo].[SalesOrderDetails]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrderDetails] DROP CONSTRAINT [FK_SalesOrderDetail_Product]
GO
ALTER TABLE [dbo].[SalesOrderDetails] DROP CONSTRAINT [FK_SalesOrderDetail_SalesOrder]
GO
DROP TABLE [dbo].[SalesOrderDetails]
GO
/****** Object:  Table [dbo].[SalesOrders]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [FK_SalesOrder_Pubs]
GO
ALTER TABLE [dbo].[SalesOrders] DROP CONSTRAINT [FK_SalesOrder_User]
GO
DROP TABLE [dbo].[SalesOrders]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_Product_Pubs]
GO
DROP TABLE [dbo].[Products]
GO
/****** Object:  Table [dbo].[PubUsers]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[PubUsers] DROP CONSTRAINT [FK_LocalUser_User]
GO
ALTER TABLE [dbo].[PubUsers] DROP CONSTRAINT [FK_PubUsers_Pubs]
GO
DROP TABLE [dbo].[PubUsers]
GO
/****** Object:  Table [dbo].[Pubs]    Script Date: 09/26/2017 00:36:06 ******/
DROP TABLE [dbo].[Pubs]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/26/2017 00:36:06 ******/
DROP TABLE [dbo].[Users]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 09/26/2017 00:36:06 ******/
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
	[Password] [varbinary](8000) NULL,
	[PostDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pubs]    Script Date: 09/26/2017 00:36:06 ******/
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
/****** Object:  Table [dbo].[PubUsers]    Script Date: 09/26/2017 00:36:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PubUsers](
	[PubId] [int] NULL,
	[UserId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 09/26/2017 00:36:06 ******/
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
	[Image] [image] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrders]    Script Date: 09/26/2017 00:36:06 ******/
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
/****** Object:  Table [dbo].[SalesOrderDetails]    Script Date: 09/26/2017 00:36:06 ******/
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
/****** Object:  ForeignKey [FK_LocalUser_User]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[PubUsers]  WITH CHECK ADD  CONSTRAINT [FK_LocalUser_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[PubUsers] CHECK CONSTRAINT [FK_LocalUser_User]
GO
/****** Object:  ForeignKey [FK_PubUsers_Pubs]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[PubUsers]  WITH CHECK ADD  CONSTRAINT [FK_PubUsers_Pubs] FOREIGN KEY([PubId])
REFERENCES [dbo].[Pubs] ([PubId])
GO
ALTER TABLE [dbo].[PubUsers] CHECK CONSTRAINT [FK_PubUsers_Pubs]
GO
/****** Object:  ForeignKey [FK_Product_Pubs]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Pubs] FOREIGN KEY([PubId])
REFERENCES [dbo].[Pubs] ([PubId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Pubs]
GO
/****** Object:  ForeignKey [FK_SalesOrder_Pubs]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_Pubs] FOREIGN KEY([UserId])
REFERENCES [dbo].[Pubs] ([PubId])
GO
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_SalesOrder_Pubs]
GO
/****** Object:  ForeignKey [FK_SalesOrder_User]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrders]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[SalesOrders] CHECK CONSTRAINT [FK_SalesOrder_User]
GO
/****** Object:  ForeignKey [FK_SalesOrderDetail_Product]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
GO
ALTER TABLE [dbo].[SalesOrderDetails] CHECK CONSTRAINT [FK_SalesOrderDetail_Product]
GO
/****** Object:  ForeignKey [FK_SalesOrderDetail_SalesOrder]    Script Date: 09/26/2017 00:36:06 ******/
ALTER TABLE [dbo].[SalesOrderDetails]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrderDetail_SalesOrder] FOREIGN KEY([SalesOrderId])
REFERENCES [dbo].[SalesOrders] ([SalesOrderId])
GO
ALTER TABLE [dbo].[SalesOrderDetails] CHECK CONSTRAINT [FK_SalesOrderDetail_SalesOrder]
GO
