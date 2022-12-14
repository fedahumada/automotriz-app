USE [master]
GO
/****** Object:  Database [AUTOMOTRIZPROG]    Script Date: 6/11/2022 22:05:18 ******/
CREATE DATABASE [AUTOMOTRIZPROG]
 
USE [AUTOMOTRIZPROG]
GO
/****** Object:  Table [dbo].[CREDENCIALES]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CREDENCIALES](
	[id_credencial] [int] IDENTITY(1,1) NOT NULL,
	[usuario] [varchar](100) NOT NULL,
	[contrasenia] [varchar](100) NOT NULL,
	[privilegio] [varchar](20) NOT NULL,
	[id_empleado] [int] NULL,
 CONSTRAINT [pk_credenciales] PRIMARY KEY CLUSTERED 
(
	[id_credencial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLES]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLES](
	[id_detalle] [int] IDENTITY(1,1) NOT NULL,
	[id_documento] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[precio_unitario] [numeric](10, 2) NOT NULL,
	[cantidad] [smallint] NOT NULL,
 CONSTRAINT [pk_detalles] PRIMARY KEY CLUSTERED 
(
	[id_detalle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCUMENTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENTOS](
	[id_documento] [int] IDENTITY(1,1) NOT NULL,
	[tipo_documento] [varchar](100) NOT NULL,
	[vendedor] [varchar](100) NOT NULL,
	[cliente] [varchar](100) NOT NULL,
	[fecha_documento] [datetime] NOT NULL,
	[fecha_entrega] [datetime] NOT NULL,
	[fecha_baja] [datetime] NULL,
 CONSTRAINT [pk_pedidos] PRIMARY KEY CLUSTERED 
(
	[id_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONAL]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONAL](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NULL,
	[apellido] [varchar](25) NULL,
	[email] [varchar](60) NULL,
	[dni] [bigint] NULL,
	[celular] [bigint] NULL,
	[fecha_nacimiento] [date] NULL,
 CONSTRAINT [pk_personal] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](100) NOT NULL,
	[modelo] [varchar](100) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[color] [varchar](100) NOT NULL,
	[anio] [int] NOT NULL,
	[stock] [int] NOT NULL,
	[stock_critico] [int] NOT NULL,
	[precio_vta] [numeric](10, 2) NOT NULL,
 CONSTRAINT [pk_productos] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CREDENCIALES] ON 

INSERT [dbo].[CREDENCIALES] ([id_credencial], [usuario], [contrasenia], [privilegio], [id_empleado]) VALUES (1, N'admin', N'admin', N'administrador', 2)
INSERT [dbo].[CREDENCIALES] ([id_credencial], [usuario], [contrasenia], [privilegio], [id_empleado]) VALUES (2, N'vendedor', N'vendedor', N'empleado', 1)
SET IDENTITY_INSERT [dbo].[CREDENCIALES] OFF
GO
--SET IDENTITY_INSERT [dbo].[DETALLES] ON 

--INSERT [dbo].[DETALLES] ([id_detalle], [id_documento], [id_producto], [precio_unitario], [cantidad]) VALUES (1, 1, 3, CAST(9000.00 AS Numeric(10, 2)), 1)
--INSERT [dbo].[DETALLES] ([id_detalle], [id_documento], [id_producto], [precio_unitario], [cantidad]) VALUES (3, 2, 4, CAST(9000.00 AS Numeric(10, 2)), 1)
--SET IDENTITY_INSERT [dbo].[DETALLES] OFF
--GO
--SET IDENTITY_INSERT [dbo].[DOCUMENTOS] ON 

--INSERT [dbo].[DOCUMENTOS] ([id_documento], [tipo_documento], [vendedor], [cliente], [fecha_documento], [fecha_entrega], [fecha_baja]) VALUES (1, N'pedido', N'R.Rodriguez', N'Luiten Lucas', CAST(N'2022-11-06T00:00:00.000' AS DateTime), CAST(N'2022-11-07T00:00:00.000' AS DateTime), CAST(N'2022-11-06T17:31:09.063' AS DateTime))
--INSERT [dbo].[DOCUMENTOS] ([id_documento], [tipo_documento], [vendedor], [cliente], [fecha_documento], [fecha_entrega], [fecha_baja]) VALUES (2, N'pedido', N'R.Rodriguez', N'Federico Ahumada', CAST(N'2022-11-06T21:43:21.000' AS DateTime), CAST(N'2022-11-06T21:43:21.000' AS DateTime), NULL)
--SET IDENTITY_INSERT [dbo].[DOCUMENTOS] OFF
--GO
SET IDENTITY_INSERT [dbo].[PERSONAL] ON 

INSERT [dbo].[PERSONAL] ([id_empleado], [nombre], [apellido], [email], [dni], [celular], [fecha_nacimiento]) VALUES (1, N'Gerardo', N'Taborda', N'Gtaborda@outlook.com', 41010220, 3516570919, CAST(N'1999-09-01' AS Date))
INSERT [dbo].[PERSONAL] ([id_empleado], [nombre], [apellido], [email], [dni], [celular], [fecha_nacimiento]) VALUES (2, N'Sofía', N'Ruíz', N'SoRu@Gmail.com', 35600310, 3515823775, CAST(N'1987-10-12' AS Date))
SET IDENTITY_INSERT [dbo].[PERSONAL] OFF
GO
--SET IDENTITY_INSERT [dbo].[PRODUCTOS] ON 

--INSERT [dbo].[PRODUCTOS] ([id_producto], [marca], [modelo], [descripcion], [color], [anio], [stock], [stock_critico], [precio_vta]) VALUES (3, N'FIAT', 600, N'3 PUERTAS', N'DORADO', 2022, 10, 1, CAST(9000.00 AS Numeric(10, 2)))
--INSERT [dbo].[PRODUCTOS] ([id_producto], [marca], [modelo], [descripcion], [color], [anio], [stock], [stock_critico], [precio_vta]) VALUES (4, N'FIAT', 600, N'3 PUERTAS', N'GRIS', 2022, 10, 1, CAST(9000.00 AS Numeric(10, 2)))
--SET IDENTITY_INSERT [dbo].[PRODUCTOS] OFF
--GO
ALTER TABLE [dbo].[CREDENCIALES]  WITH CHECK ADD  CONSTRAINT [fk_credenciales_personal] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[PERSONAL] ([id_empleado])
GO
ALTER TABLE [dbo].[CREDENCIALES] CHECK CONSTRAINT [fk_credenciales_personal]
GO
ALTER TABLE [dbo].[DETALLES]  WITH CHECK ADD  CONSTRAINT [fk_detalles_documentos] FOREIGN KEY([id_documento])
REFERENCES [dbo].[DOCUMENTOS] ([id_documento])
GO
ALTER TABLE [dbo].[DETALLES] CHECK CONSTRAINT [fk_detalles_documentos]
GO
ALTER TABLE [dbo].[DETALLES]  WITH CHECK ADD  CONSTRAINT [fk_detalles_productos] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[DETALLES] CHECK CONSTRAINT [fk_detalles_productos]
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_DOCUMENTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_ACTUALIZAR_DOCUMENTOS]
	@id_documento int,
	@vendedor varchar(200), 
	@cliente varchar(200),
	@fecha_entrega datetime,
	@fecha_documento datetime
as
begin
	update DOCUMENTOS 
	set tipo_documento = 'pedido', vendedor = @vendedor, cliente = @cliente, fecha_documento = @fecha_documento, fecha_entrega = @fecha_entrega, fecha_baja = null
	where id_documento = @id_documento;
	
	delete detalles
	where id_documento = @id_documento
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_ACTUALIZAR_PRODUCTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ACTUALIZAR_PRODUCTOS]
	@id_producto int,
	@marca	varchar(100),
	@modelo	varchar(100),
	@descripcion	varchar(100),
	@color	varchar(100),
	@anio	int,
	@stock	int,
	@stock_critico	int, 
	@precio_vta		numeric(10,2)
as
begin
	update productos 
	set marca=@marca,modelo=@modelo,descripcion=@descripcion,color=@color,anio=@anio,
	stock=@stock,stock_critico=@stock_critico,precio_vta=@precio_vta
	where id_producto = @id_producto;
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_DOCUMENTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_CONSULTAR_DOCUMENTOS]
	@fecha_desde datetime,
	@fecha_hasta datetime,
	@cliente varchar(255)
as
begin
	select * 
	from documentos
	where fecha_baja is null and
	(fecha_documento between @fecha_desde and @fecha_hasta)
	and cliente LIKE '%' +@cliente+ '%'
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_DOCUMENTOS_CON_DETALLES]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CONSULTAR_DOCUMENTOS_CON_DETALLES]
	@id_documento int
as
begin
	select d.*,p.marca,p.modelo,p.descripcion,p.color,p.anio,p.precio_vta,doc.vendedor,doc.cliente,doc.fecha_documento,doc.fecha_entrega
	from detalles d
	join productos p on p.id_producto = d.id_producto
	join documentos doc on d.id_documento = doc.id_documento
	where doc.id_documento = @id_documento
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_PRODUCTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_CONSULTAR_PRODUCTOS]
as
begin
	select * from productos order by marca
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_DOCUMENTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ELIMINAR_DOCUMENTOS]
	@id_documento int
as
begin
	update documentos set fecha_baja = getdate() 
	where @id_documento = id_documento
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_ELIMINAR_PRODUCTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_ELIMINAR_PRODUCTOS]
	@id_producto int
as
begin
	delete from productos
	where @id_producto = id_producto
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INGRESAR]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_INGRESAR]
	@usuario varchar(100),
	@contrasenia varchar(100),
	@privilegio varchar(20) output,
	@nombreApellido varchar(60) output,
	@Id_Credencial int output
AS
BEGIN
	set @privilegio = (SELECT privilegio FROM credenciales where usuario = @usuario AND contrasenia = @contrasenia)

	set @nombreApellido =(SELECT CONCAT_WS(' ',nombre,apellido) As resultado  FROM personal p LEFT JOIN CREDENCIALES c on p.id_empleado = c.id_empleado
	WHERE c.usuario = @usuario AND c.contrasenia = @contrasenia) 

	set @Id_Credencial = (SELECT id_credencial FROM CREDENCIALES WHERE usuario = @usuario AND contrasenia = @contrasenia)

END
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLES]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERTAR_DETALLES]
	@id_documento int,
	@id_producto int,
	@precio_unitario numeric(10,2),
	@cantidad smallint
as
begin
	insert into DETALLES(id_documento,id_producto,precio_unitario,cantidad)
    values (@id_documento,@id_producto,@precio_unitario,@cantidad)
  
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DOCUMENTOS]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_INSERTAR_DOCUMENTOS]
	@id_documento int output,
	@id	int,
	@tipo_documento	varchar(100),
	@vendedor varchar(100),
	@cliente varchar(100),
	@fecha_documento datetime,
	@fecha_entrega datetime
as
begin
	insert into documentos (tipo_documento,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja)
	values (@tipo_documento,@vendedor,@cliente,@fecha_documento,@fecha_entrega,null);
	set @id_documento = scope_identity()
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_PRODUCTO]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_INSERTAR_PRODUCTO]
@id	int,
@marca	varchar(100),
@modelo	varchar(100),
@descripcion	varchar(100),
@color	varchar(100),
@anio	int,
@stock	int,
@stock_critico	int, 
@precio_vta		numeric(10,2)
as
begin
insert into productos (marca, modelo, descripcion, color, anio, stock, stock_critico, precio_vta)
VALUES (@marca,@modelo,@descripcion,@color,@anio,@stock,@stock_critico,@precio_vta)
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_NOMBRE_EMPLEADO]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_NOMBRE_EMPLEADO]
	@Id_Credencial int,
	@ApellidoNombre varchar (60) output
AS
BEGIN
	

	set @ApellidoNombre =(SELECT CONCAT_WS(' ',nombre,apellido) As resultado  FROM personal p LEFT JOIN CREDENCIALES c on p.id_empleado = c.id_empleado
	WHERE c.id_credencial = 2)

	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORTE_PRODUCTOS_AGRUPADO]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure SP_REPORTE_PRODUCTOS_AGRUPADO
	@fecha_desde	datetime,
	@fecha_hasta	datetime
as
begin
	select p.marca as marca, count(d.cantidad) as cantidad
	from productos p
	join detalles d on d.id_producto = p.id_producto
	join documentos doc on doc.id_documento = d.id_documento
	where (fecha_documento between @fecha_desde and @fecha_hasta)
	and fecha_baja is null
	group by p.marca
end;
GO
/****** Object:  StoredProcedure [dbo].[SP_REPORTE_PRODUCTOS_LISTADO]    Script Date: 6/11/2022 22:05:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure SP_REPORTE_PRODUCTOS_LISTADO
as
begin
	select id_producto as id_producto  ,marca as marca  ,modelo as modelo  ,descripcion as descripcion  
	,color as color  ,anio as anio  ,stock as stock  ,stock_critico as stock_critico  ,precio_vta as precio_vta  
	from productos
end;
GO
USE [master]
GO
ALTER DATABASE [AUTOMOTRIZPROG] SET  READ_WRITE 
GO

SET DATEFORMAT DMY


--	 DOCUMENTOS 
insert into DOCUMENTOS ( tipo_documento,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja ) values ('pedido','J.GOMEZ','GUILLERMO LOPEZ','15/09/2022','11/10/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pedido','R.GARCIA','JUAN RAMIREZ','11/09/2022','08/10/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor,cliente ,fecha_documento,fecha_entrega,fecha_baja ) values ( 'pedido','M.VILLARUEL','SOFIA DIAZ','12/09/2022','09/10/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor,cliente ,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pedido','F.ANDINO','MIRANDA OLMEDO','09/09/2022','09/10/2022',null);
insert into DOCUMENTOS ( tipo_documento ,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja ) values ( 'pedido','ALVAREZ','LUCAS MARTINO','08/07/2022','18/08/2022',null);
insert into DOCUMENTOS ( tipo_documento ,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja ) values ( 'pedido','L.CAVALO','MARIO BIANCO','15/07/2022','18/08/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pedido','J.GOMEZ','RICARDO LOPEZ','15/07/2022','18/08/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pedido','R.GARCIA','LUIS RAMIREZ','08/07/2022','16/08/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  )  values ( 'pedido','M.VILLARUEL','SERENA DIAZ','09/10/2022','20/11/2022',null);
insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pedido','F.ANDINO','JOAQUIN OLMEDO','09/10/2022','18/11/2022',null);
insert into DOCUMENTOS ( tipo_documento ,vendedor,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pedido','ALVAREZ','MARIA MARTINO','12/10/2022','09/11/2022',null);
--pruebaeliminacion
--insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pruebaeliminacion','L.CAVALO','JUANA VIDALES','09/10/2022','20/11/2022',null);
--insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pruebaeliminacion','J.GOMEZ','LISANDRO LOPEZ','08/06/2022','09/07/2022',null);
--insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pruebaeliminacion','R.GARCIA','FEDERICO RAMIREZ','15/06/2022','18/07/2022',null);
--insert into DOCUMENTOS ( tipo_documento,vendedor ,cliente,fecha_documento,fecha_entrega,fecha_baja  ) values ( 'pruebaeliminacion','M.VILLARUEL','MARTIN DIAZ','15/06/2022','16/07/2022',null);

--PRODUCTOS
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Chevrolet','Onix','Coupe','azul',2022,5,1,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('VolksWagen','Cruze','Sedan','turquesa',2022,4,2,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Ford','S10','Urbano','rojo',2022,3,2,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Audi','Joy','Descapotable','bordo',2022,4,2,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('BMW','Tracker','4x4','gris',2022,3,2,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Fiat','Uno','Urbano','dorado',2022,100,2,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Toyota','Camaro','Pickup','rojo',2022,4,2,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Peugeot','Nivus','Coupe','blanco',2022,3,1,9000);
insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Renault','Gol','Urbano','marron' ,2022,3,1,9000);

--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Suzuki','Saveiro','Coupe','petroleo',2021,4,2,10000);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Citroen','Civic','Coupe','negromate',2019,4,2,10000);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Fiat','A1','Urbano','azul',2018,3,1,10050);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Toyota','A3','Pickup','gris',2019,5,2,10090);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Peugeot','A7','Coupe','turquesa',2020,3,1,20060);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Renault','RS5','Coupe','turquesa',2020,3,1,20040);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Suzuki','M2','Todoterreno','negromate',2019,4,2,20080);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Citroen','M8','Furgoneta','gris',2018,4,2,20060);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Kia','Virtus','Urbano','petroleo',2021,5,2,20090);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Jeep','Kuga','Todoterreno','turquesa',2021,3,1,20080);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Honda','Civic','Todoterreno','bordo',2021,3,1,10050);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('VolksWagen','Argo','Coupe','gris',2018,4,2,10040);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Ford','Fiesta','Urbano','azul',2018,3,1,20020);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Audi','Ecosport','Todoterreno','blanco',2018,4,1,20040);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('BMW','TT','Deportivo','rojo',2021,4,1,20090);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Fiat','208','Urbano','gris',2018,5,2,2000000);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Toyota','Mondeo','Pickup','azul',2019,3,1,10040);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Peugeot','308','Coupe','gris',2018,4,2,10030);
--insert into PRODUCTOS (marca,modelo,descripcion,color,anio,stock,stock_critico,precio_vta)values ('Renault','Clio','Urbano','negromate',2021,3,1,9008);


 --DETALLES
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario,cantidad)VALUES (1,1,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (2,2,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (3,3,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (4,4,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (5,6,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (6,6,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (7,6,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (8,7,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (9,8,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (10,8,9000,1)
 INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (11,8,9000,1)

 --pruebaeliminacion
 --INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (17,7,9000,1)
 --INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (18,8,9000,1)
 --INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (19,8,9000,1)
 --INSERT INTO DETALLES(id_documento,id_producto,precio_unitario ,cantidad)VALUES (20,8,9000,1)
 




 select* from DOCUMENTOS d,DETALLES de where d.id_documento = de.id_documento