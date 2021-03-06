USE [master]
GO
/****** Object:  Database [BARAPPBD]    Script Date: 09/09/2017 01:10:05 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BARAPPBD')
BEGIN
CREATE DATABASE [BARAPPBD] ON  PRIMARY 
( NAME = N'BARAPPBD', FILENAME = N'K:\DATA\BARAPPBD.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BARAPPBD_log', FILENAME = N'K:\DATA\BARAPPBD_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
GO
ALTER DATABASE [BARAPPBD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BARAPPBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BARAPPBD] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BARAPPBD] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BARAPPBD] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BARAPPBD] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BARAPPBD] SET ARITHABORT OFF
GO
ALTER DATABASE [BARAPPBD] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BARAPPBD] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BARAPPBD] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BARAPPBD] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BARAPPBD] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BARAPPBD] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BARAPPBD] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BARAPPBD] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BARAPPBD] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BARAPPBD] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BARAPPBD] SET  DISABLE_BROKER
GO
ALTER DATABASE [BARAPPBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BARAPPBD] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BARAPPBD] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BARAPPBD] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BARAPPBD] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BARAPPBD] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BARAPPBD] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BARAPPBD] SET  READ_WRITE
GO
ALTER DATABASE [BARAPPBD] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BARAPPBD] SET  MULTI_USER
GO
ALTER DATABASE [BARAPPBD] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BARAPPBD] SET DB_CHAINING OFF
GO
USE [BARAPPBD]
GO
/****** Object:  ForeignKey [FK_UsuarioLocal_Local]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal] DROP CONSTRAINT [FK_UsuarioLocal_Local]
GO
/****** Object:  ForeignKey [FK_UsuarioLocal_Usuario]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal] DROP CONSTRAINT [FK_UsuarioLocal_Usuario]
GO
/****** Object:  ForeignKey [FK_Producto_Local]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Local]
GO
/****** Object:  ForeignKey [FK_Pedido_Local]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Local]
GO
/****** Object:  ForeignKey [FK_Pedido_Usuario]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Usuario]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Pedido]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Pedido]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido] DROP CONSTRAINT [FK_DetallePedido_Pedido]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Producto]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido] DROP CONSTRAINT [FK_DetallePedido_Producto]
GO
/****** Object:  Table [dbo].[DetallePedido]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Pedido]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido] DROP CONSTRAINT [FK_DetallePedido_Pedido]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido] DROP CONSTRAINT [FK_DetallePedido_Producto]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetallePedido]') AND type in (N'U'))
DROP TABLE [dbo].[DetallePedido]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Local]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FK_Pedido_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedido]') AND type in (N'U'))
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] DROP CONSTRAINT [FK_Producto_Local]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
DROP TABLE [dbo].[Producto]
GO
/****** Object:  Table [dbo].[UsuarioLocal]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal] DROP CONSTRAINT [FK_UsuarioLocal_Local]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal] DROP CONSTRAINT [FK_UsuarioLocal_Usuario]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]') AND type in (N'U'))
DROP TABLE [dbo].[UsuarioLocal]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[Local]    Script Date: 09/09/2017 01:10:06 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Local]') AND type in (N'U'))
DROP TABLE [dbo].[Local]
GO
/****** Object:  Table [dbo].[Local]    Script Date: 09/09/2017 01:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Local]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Local](
	[idLocal] [int] IDENTITY(1,1) NOT NULL,
	[nombreLocal] [varchar](100) NULL,
	[ruc] [varchar](11) NULL,
	[direccion] [varchar](200) NULL,
	[telefono] [varchar](9) NULL,
	[email] [varchar](150) NULL,
	[descripcion] [varchar](8000) NULL,
	[ubicacionLng] [varchar](15) NULL,
	[ubicacionLtd] [varchar](15) NULL,
 CONSTRAINT [PK_Local] PRIMARY KEY CLUSTERED 
(
	[idLocal] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 09/09/2017 01:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[nombreCompleto] [varchar](200) NULL,
	[email] [varchar](150) NULL,
	[telefono] [varchar](9) NULL,
	[fechaRegistro] [datetime] NULL,
	[nroDocumento] [char](8) NULL,
	[password] [varbinary](8000) NULL,
	[tipoUsuario] [char](1) NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UsuarioLocal]    Script Date: 09/09/2017 01:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UsuarioLocal](
	[idLocal] [int] NOT NULL,
	[idUsuario] [int] NOT NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 09/09/2017 01:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Producto]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Producto](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[idLocal] [int] NULL,
	[nombreProducto] [varchar](100) NULL,
	[descripcion] [varchar](8000) NULL,
	[tipoProducto] [char](1) NULL,
	[imagen] [image] NULL,
	[precio] [numeric](7, 2) NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 09/09/2017 01:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedido]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pedido](
	[idPedido] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[idLocal] [int] NULL,
	[fechaPedido] [datetime] NULL,
	[estado] [char](1) NULL,
	[tiempoEsperado] [char](5) NULL,
	[tiempoAtendido] [char](5) NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[idPedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DetallePedido]    Script Date: 09/09/2017 01:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DetallePedido]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DetallePedido](
	[idDetallePedido] [int] IDENTITY(1,1) NOT NULL,
	[idPedido] [int] NULL,
	[idProducto] [int] NULL,
	[cantidad] [int] NULL,
	[precio] [numeric](7, 2) NULL,
 CONSTRAINT [PK_DetallePedido] PRIMARY KEY CLUSTERED 
(
	[idDetallePedido] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  ForeignKey [FK_UsuarioLocal_Local]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioLocal_Local] FOREIGN KEY([idLocal])
REFERENCES [dbo].[Local] ([idLocal])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal] CHECK CONSTRAINT [FK_UsuarioLocal_Local]
GO
/****** Object:  ForeignKey [FK_UsuarioLocal_Usuario]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal]  WITH CHECK ADD  CONSTRAINT [FK_UsuarioLocal_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UsuarioLocal_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[UsuarioLocal]'))
ALTER TABLE [dbo].[UsuarioLocal] CHECK CONSTRAINT [FK_UsuarioLocal_Usuario]
GO
/****** Object:  ForeignKey [FK_Producto_Local]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Local] FOREIGN KEY([idLocal])
REFERENCES [dbo].[Local] ([idLocal])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Producto_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Producto]'))
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Local]
GO
/****** Object:  ForeignKey [FK_Pedido_Local]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Local] FOREIGN KEY([idLocal])
REFERENCES [dbo].[Local] ([idLocal])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Local]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Local]
GO
/****** Object:  ForeignKey [FK_Pedido_Usuario]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([idUsuario])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Pedido_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Pedido]'))
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FK_Pedido_Usuario]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Pedido]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Pedido]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Pedido] FOREIGN KEY([idPedido])
REFERENCES [dbo].[Pedido] ([idPedido])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Pedido]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Pedido]
GO
/****** Object:  ForeignKey [FK_DetallePedido_Producto]    Script Date: 09/09/2017 01:10:06 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido]  WITH CHECK ADD  CONSTRAINT [FK_DetallePedido_Producto] FOREIGN KEY([idProducto])
REFERENCES [dbo].[Producto] ([idProducto])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DetallePedido_Producto]') AND parent_object_id = OBJECT_ID(N'[dbo].[DetallePedido]'))
ALTER TABLE [dbo].[DetallePedido] CHECK CONSTRAINT [FK_DetallePedido_Producto]
GO
