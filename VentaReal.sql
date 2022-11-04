/*
 Navicat Premium Data Transfer

 Source Server         : SQLServer
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : BRYANLOPEZLP\SQLEXPRESS:1433
 Source Catalog        : VentaReal
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 04/11/2022 15:42:54
*/


-- ----------------------------
-- Table structure for cliente
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[cliente]') AND type IN ('U'))
	DROP TABLE [dbo].[cliente]
GO

CREATE TABLE [dbo].[cliente] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[cliente] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of cliente
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[cliente] ON
GO

INSERT INTO [dbo].[cliente] ([id], [nombre]) VALUES (N'2', N'EngelBry'), (N'3', N'Calderon'), (N'4', N'Perez'), (N'6', N'Panchito'), (N'8', N'patito 8'), (N'9', N'patito 1'), (N'10', N'Pato no es feo'), (N'13', N'López')
GO

SET IDENTITY_INSERT [dbo].[cliente] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for concepto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[concepto]') AND type IN ('U'))
	DROP TABLE [dbo].[concepto]
GO

CREATE TABLE [dbo].[concepto] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [id_venta] bigint  NOT NULL,
  [cantidad] int  NOT NULL,
  [precioUnitario] decimal(16,2)  NOT NULL,
  [importe] decimal(16,2)  NOT NULL,
  [id_producto] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[concepto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of concepto
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[concepto] ON
GO

INSERT INTO [dbo].[concepto] ([id], [id_venta], [cantidad], [precioUnitario], [importe], [id_producto]) VALUES (N'2', N'2', N'2', N'250.00', N'.00', N'1'), (N'3', N'3', N'2', N'250.00', N'.00', N'1'), (N'4', N'4', N'1', N'300.00', N'.00', N'1'), (N'5', N'5', N'1', N'300.00', N'300.00', N'1'), (N'6', N'6', N'2', N'200.00', N'400.00', N'1'), (N'15', N'15', N'0', N'.00', N'.00', N'1'), (N'22', N'22', N'0', N'.00', N'.00', N'1'), (N'23', N'23', N'0', N'.00', N'.00', N'1'), (N'24', N'23', N'0', N'.00', N'.00', N'1'), (N'25', N'24', N'1', N'.00', N'10.00', N'1'), (N'26', N'24', N'2', N'.00', N'50.00', N'1'), (N'27', N'25', N'2', N'.00', N'20.50', N'1'), (N'28', N'26', N'1', N'.00', N'50.00', N'1'), (N'29', N'27', N'1', N'.00', N'50.00', N'1'), (N'30', N'28', N'1', N'.00', N'50.00', N'1'), (N'31', N'29', N'1', N'.00', N'50.00', N'1'), (N'32', N'30', N'1', N'.00', N'50.00', N'1'), (N'33', N'31', N'1', N'.00', N'50.00', N'1'), (N'34', N'32', N'1', N'.00', N'50.00', N'1'), (N'35', N'32', N'1', N'.00', N'50.00', N'1'), (N'36', N'33', N'0', N'.00', N'.00', N'1'), (N'37', N'34', N'0', N'.00', N'.00', N'1'), (N'38', N'34', N'1', N'.00', N'1.00', N'1'), (N'39', N'35', N'0', N'.00', N'.00', N'1'), (N'40', N'36', N'0', N'.00', N'.00', N'1'), (N'41', N'37', N'0', N'.00', N'.00', N'1'), (N'42', N'38', N'2', N'.00', N'50.00', N'1')
GO

SET IDENTITY_INSERT [dbo].[concepto] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for producto
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[producto]') AND type IN ('U'))
	DROP TABLE [dbo].[producto]
GO

CREATE TABLE [dbo].[producto] (
  [id] bigint  IDENTITY(1,1) NOT NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [precioUnitario] decimal(16,2)  NOT NULL,
  [costo] decimal(16,2)  NOT NULL
)
GO

ALTER TABLE [dbo].[producto] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of producto
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[producto] ON
GO

INSERT INTO [dbo].[producto] ([id], [nombre], [precioUnitario], [costo]) VALUES (N'1', N'Soda', N'250.00', N'300.00')
GO

SET IDENTITY_INSERT [dbo].[producto] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for usuario
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[usuario]') AND type IN ('U'))
	DROP TABLE [dbo].[usuario]
GO

CREATE TABLE [dbo].[usuario] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [email] varchar(100) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [password] varchar(300) COLLATE Modern_Spanish_CI_AS  NOT NULL,
  [nombre] varchar(50) COLLATE Modern_Spanish_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[usuario] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of usuario
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[usuario] ON
GO

INSERT INTO [dbo].[usuario] ([id], [email], [password], [nombre]) VALUES (N'1', N'bryan@contacto.com', N'0bcf62b62f026b799d6245fc98591b58f6428db3a828303791f135360461d4ca', N'bryan')
GO

SET IDENTITY_INSERT [dbo].[usuario] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for venta
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[venta]') AND type IN ('U'))
	DROP TABLE [dbo].[venta]
GO

CREATE TABLE [dbo].[venta] (
  [Id] bigint  IDENTITY(1,1) NOT NULL,
  [fecha] datetime  NOT NULL,
  [total] decimal(16,2)  NULL,
  [id_cliente] int  NOT NULL
)
GO

ALTER TABLE [dbo].[venta] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of venta
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[venta] ON
GO

INSERT INTO [dbo].[venta] ([Id], [fecha], [total], [id_cliente]) VALUES (N'1', N'2022-11-01 18:50:05.317', N'250.00', N'2'), (N'2', N'2022-11-01 18:51:14.163', N'250.00', N'2'), (N'3', N'2022-11-01 18:51:59.557', N'250.00', N'3'), (N'4', N'2022-11-01 18:54:01.177', N'300.00', N'4'), (N'5', N'2022-11-01 18:55:55.787', N'300.00', N'6'), (N'6', N'2022-11-02 14:24:45.510', N'400.00', N'6'), (N'15', N'2022-11-02 17:44:20.793', N'.00', N'2'), (N'22', N'2022-11-02 17:47:26.137', N'.00', N'2'), (N'23', N'2022-11-02 17:47:31.930', N'.00', N'2'), (N'24', N'2022-11-02 17:49:01.560', N'.00', N'2'), (N'25', N'2022-11-02 17:50:38.147', N'.00', N'2'), (N'26', N'2022-11-03 15:25:00.443', N'.00', N'2'), (N'27', N'2022-11-03 15:25:02.973', N'.00', N'2'), (N'28', N'2022-11-03 15:25:03.503', N'.00', N'2'), (N'29', N'2022-11-03 15:25:03.683', N'.00', N'2'), (N'30', N'2022-11-03 15:25:03.863', N'.00', N'2'), (N'31', N'2022-11-03 15:25:04.050', N'.00', N'2'), (N'32', N'2022-11-03 15:25:09.417', N'.00', N'2'), (N'33', N'2022-11-03 15:25:15.207', N'.00', N'2'), (N'34', N'2022-11-03 15:25:24.350', N'.00', N'2'), (N'35', N'2022-11-03 15:27:01.010', N'.00', N'2'), (N'36', N'2022-11-03 15:27:10.370', N'.00', N'2'), (N'37', N'2022-11-03 15:28:58.243', N'.00', N'2'), (N'38', N'2022-11-03 15:29:09.950', N'.00', N'2')
GO

SET IDENTITY_INSERT [dbo].[venta] OFF
GO

COMMIT
GO


-- ----------------------------
-- Auto increment value for cliente
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[cliente]', RESEED, 13)
GO


-- ----------------------------
-- Primary Key structure for table cliente
-- ----------------------------
ALTER TABLE [dbo].[cliente] ADD CONSTRAINT [PK__cliente__3213E83F92F77801] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for concepto
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[concepto]', RESEED, 42)
GO


-- ----------------------------
-- Primary Key structure for table concepto
-- ----------------------------
ALTER TABLE [dbo].[concepto] ADD CONSTRAINT [PK__concepto__3213E83F081C6D6A] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for producto
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[producto]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table producto
-- ----------------------------
ALTER TABLE [dbo].[producto] ADD CONSTRAINT [PK__producto__3213E83FBE50B1C8] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for usuario
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[usuario]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table usuario
-- ----------------------------
ALTER TABLE [dbo].[usuario] ADD CONSTRAINT [PK__usuario__3213E83FD2E80716] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for venta
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[venta]', RESEED, 38)
GO


-- ----------------------------
-- Primary Key structure for table venta
-- ----------------------------
ALTER TABLE [dbo].[venta] ADD CONSTRAINT [PK__venta__3214EC07C2C22FA8] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table concepto
-- ----------------------------
ALTER TABLE [dbo].[concepto] ADD CONSTRAINT [FK__concepto__id_ven__38996AB5] FOREIGN KEY ([id_venta]) REFERENCES [dbo].[venta] ([Id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[concepto] ADD CONSTRAINT [FK__concepto__id_pro__3B75D760] FOREIGN KEY ([id_producto]) REFERENCES [dbo].[producto] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table venta
-- ----------------------------
ALTER TABLE [dbo].[venta] ADD CONSTRAINT [FK__venta__id_client__3E52440B] FOREIGN KEY ([id_cliente]) REFERENCES [dbo].[cliente] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

