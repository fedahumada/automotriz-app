USE [master]
GO
/****** Object:  Database [AUTOMOTRIZPROG_1]    Script Date: 29/10/2022 22:55:39 ******/
CREATE DATABASE [AUTOMOTRIZPROG_1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AUTOMOTRIZPROG_1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AUTOMOTRIZPROG_1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AUTOMOTRIZPROG_1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AUTOMOTRIZPROG_1_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AUTOMOTRIZPROG_1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ARITHABORT OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET RECOVERY FULL 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET  MULTI_USER 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AUTOMOTRIZPROG_1', N'ON'
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET QUERY_STORE = OFF
GO
USE [AUTOMOTRIZPROG_1]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[Id_Documento] [int] NULL,
	[nom_cliente] [varchar](100) NULL,
	[ape_cliente] [varchar](100) NULL,
	[email] [varchar](100) NULL,
	[telefono] [numeric](10, 0) NOT NULL,
	[niv_priv] [varchar](100) NULL,
 CONSTRAINT [pk_clientes] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONFIGURACIONES]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONFIGURACIONES](
	[id_configuracion] [int] IDENTITY(1,1) NOT NULL,
	[pre_vta] [numeric](10, 2) NOT NULL,
	[precio_critico] [numeric](10, 2) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[stock] [smallint] NOT NULL,
	[stock_critico] [smallint] NULL,
 CONSTRAINT [pk_configuraciones] PRIMARY KEY CLUSTERED 
(
	[id_configuracion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLES_DOCUMENTOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLES_DOCUMENTOS](
	[id_detalle_documento] [int] IDENTITY(1,1) NOT NULL,
	[id_documento] [int] NOT NULL,
	[idproducto] [int] NOT NULL,
	[fecha_pedido] [numeric](10, 2) NOT NULL,
	[cantidad] [smallint] NOT NULL,
	[tipo_doc] [varchar](100) NOT NULL,
 CONSTRAINT [pk_DETALLES_DOCUMENTOS] PRIMARY KEY CLUSTERED 
(
	[id_detalle_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCUMENTOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENTOS](
	[Id_Documento] [int] IDENTITY(1,1) NOT NULL,
	[empleado] [varchar](100) NOT NULL,
	[id_cliente] [int] NOT NULL,
	[fecha_pedido] [datetime] NOT NULL,
	[fecha_entrega] [datetime] NOT NULL,
	[fecha_baja] [datetime] NOT NULL,
 CONSTRAINT [pk_DOCUMENTOS] PRIMARY KEY CLUSTERED 
(
	[Id_Documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Marcas]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Marcas](
	[idMarca] [int] NOT NULL,
	[nombreMarca] [varchar](50) NULL,
 CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED 
(
	[idMarca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDIOS_PAGO]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDIOS_PAGO](
	[id_medio_pago] [int] IDENTITY(1,1) NOT NULL,
	[pre_vta] [decimal](16, 2) NOT NULL,
	[aum_precio] [numeric](10, 2) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [pk_medios_pago] PRIMARY KEY CLUSTERED 
(
	[id_medio_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Modelos]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modelos](
	[idModelo] [int] NOT NULL,
	[nombreModelos] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Modelos] PRIMARY KEY CLUSTERED 
(
	[idModelo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[idProducto] [int] IDENTITY(1,1) NOT NULL,
	[idVehiculo] [int] NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[anio] [int] NOT NULL,
	[idConfiguracion] [int] NOT NULL,
	[pre_venta] [decimal](16, 2) NOT NULL,
	[id_medio_pago] [int] NOT NULL,
	[idMarca] [int] NULL,
 CONSTRAINT [pk_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[idProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_DOCUMENTOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_DOCUMENTOS](
	[id_tipo_doc] [int] IDENTITY(1,1) NOT NULL,
	[nombre_tipo_doc] [varchar](100) NOT NULL,
 CONSTRAINT [pk_tipos_doc_client] PRIMARY KEY CLUSTERED 
(
	[id_tipo_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculos]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculos](
	[idVehiculo] [int] IDENTITY(1,1) NOT NULL,
	[idMarca] [int] NOT NULL,
	[idModelo] [int] NOT NULL,
	[color] [varchar](100) NOT NULL,
 CONSTRAINT [pk_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[idVehiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vendedores]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vendedores](
	[leg_vendedor] [int] IDENTITY(1,1) NOT NULL,
	[nom_empleado] [varchar](100) NOT NULL,
	[ape_empleado] [varchar](50) NOT NULL,
 CONSTRAINT [pk_Vendedores_auto] PRIMARY KEY CLUSTERED 
(
	[leg_vendedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clientes]  WITH CHECK ADD  CONSTRAINT [FK_clientes_Documentos] FOREIGN KEY([Id_Documento])
REFERENCES [dbo].[DOCUMENTOS] ([Id_Documento])
GO
ALTER TABLE [dbo].[Clientes] CHECK CONSTRAINT [FK_clientes_Documentos]
GO
ALTER TABLE [dbo].[DETALLES_DOCUMENTOS]  WITH CHECK ADD  CONSTRAINT [fk_detalles_pedidos] FOREIGN KEY([id_documento])
REFERENCES [dbo].[DOCUMENTOS] ([Id_Documento])
GO
ALTER TABLE [dbo].[DETALLES_DOCUMENTOS] CHECK CONSTRAINT [fk_detalles_pedidos]
GO
ALTER TABLE [dbo].[DETALLES_DOCUMENTOS]  WITH CHECK ADD  CONSTRAINT [fk_detalles_productos] FOREIGN KEY([idproducto])
REFERENCES [dbo].[PRODUCTOS] ([idProducto])
GO
ALTER TABLE [dbo].[DETALLES_DOCUMENTOS] CHECK CONSTRAINT [fk_detalles_productos]
GO
ALTER TABLE [dbo].[DOCUMENTOS]  WITH CHECK ADD  CONSTRAINT [fk_detalles_clientes] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[Clientes] ([id_cliente])
GO
ALTER TABLE [dbo].[DOCUMENTOS] CHECK CONSTRAINT [fk_detalles_clientes]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD FOREIGN KEY([idMarca])
REFERENCES [dbo].[Marcas] ([idMarca])
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [fk_detalle_vehiculos] FOREIGN KEY([idVehiculo])
REFERENCES [dbo].[Vehiculos] ([idVehiculo])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [fk_detalle_vehiculos]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [fk_stock_configuraciones] FOREIGN KEY([idConfiguracion])
REFERENCES [dbo].[CONFIGURACIONES] ([id_configuracion])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [fk_stock_configuraciones]
GO
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [fk_detalles_marca] FOREIGN KEY([idMarca])
REFERENCES [dbo].[Marcas] ([idMarca])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [fk_detalles_marca]
GO
ALTER TABLE [dbo].[Vehiculos]  WITH CHECK ADD  CONSTRAINT [fk_detalles_modelos] FOREIGN KEY([idModelo])
REFERENCES [dbo].[Modelos] ([idModelo])
GO
ALTER TABLE [dbo].[Vehiculos] CHECK CONSTRAINT [fk_detalles_modelos]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_PEDIDOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZAR_PEDIDOS]
	@id_documento int,
	@id_empleado int, 
	@id_cliente varchar(200),
	@fecha_entrega datetime,
	@id_pedido int output
as
begin
	update DOCUMENTOS 
set empleado = @id_empleado, id_cliente = @id_cliente, fecha_pedido = getdate(), 
	fecha_entrega = @fecha_entrega, fecha_baja = null
	where id_documento = @id_documento;
	
	delete detalles
	where id_documento = @id_documento;
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PRODUCTOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_CONSULTAR_PRODUCTOS]
as
begin
	select * from productos p left join marcas m on p.idProducto = m.idmarca order by m.idmarca;
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_PEDIDOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_ELIMINAR_PEDIDOS]
	@id_documento int
as
begin
	UPDATE documentos SET fecha_baja = GETDATE() 
	where @id_documento = id_documento;
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLES]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERTAR_DETALLES]
	@id_documento int,
	@id_producto int,
	@cantidad smallint
as
begin
	insert into DETALLES_documentos(id_documento,idproducto,cantidad)
    values (@id_documento,@id_producto,@cantidad);
  
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DOCUMENTOS]    Script Date: 29/10/2022 22:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERTAR_DOCUMENTOS]
	@id_documento int output,
	@empleado varchar(100),
	@id_cliente int,
	@fecha_pedido datetime,
	@fecha_entrega datetime
as
begin
	insert into documentos(empleado,id_cliente,fecha_pedido,fecha_entrega)
	values (@empleado,@id_cliente,getdate(),@fecha_entrega);
	set @id_documento  = scope_identity()
end;
GO
USE [master]
GO
ALTER DATABASE [AUTOMOTRIZPROG_1] SET  READ_WRITE 
GO
