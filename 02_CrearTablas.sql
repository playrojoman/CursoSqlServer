--Creación de tablas de la base de datos

--Asegurar que se usa la bd correcta
USE CursoSqlServer;
GO

--Tabla Clientes
CREATE TABLE Cliente (
id_Cliente INT IDENTITY(1,1) PRIMARY KEY, 
Nombre NVARCHAR(100) NOT NULL,
Telefono NVARCHAR(20),
Correo NVARCHAR(100),
Fecha_Registro DATETIME NOT NULL DEFAULT GETDATE(),
Activo BIT NOT NULL DEFAULT 1
);
GO

--Tabla Empleado
CREATE TABLE Empleado(
id_Empleado INT IDENTITY(1,1) PRIMARY KEY,
Nombre NVARCHAR(100) NOT NULL,
Telefono NVARCHAR(20),
Correo NVARCHAR(100),
Fecha_Registro DATETIME NOT NULL DEFAULT GETDATE(),
Activo BIT NOT NULL DEFAULT 1
);
GO

--Tabla Pedido
CREATE TABLE Pedido(
id_Pedido INT IDENTITY(1,1) PRIMARY KEY,
id_Cliente INT NOT NULL,
id_Empleado INT NOT NULL,
Fecha_Pedido DATETIME NOT NULL DEFAULT GETDATE(),
total DECIMAL(10,2) NOT NULL,
Estado NVARCHAR(20) NOT NULL DEFAULT 'Pendiente'
);
GO


--Tabla relacional de pedido con productos
CREATE TABLE DetallePedido(
id_Detalle INT IDENTITY(1,1) PRIMARY KEY,
id_Producto INT NOT NULL,
id_Pedido INT NOT NULL,
cantidad INT NOT NULL DEFAULT 1,
Precio_Unitario DECIMAL(10,2) NOT NULL,
Subtotal DECIMAL(10,2) NOT NULL 
);
GO

--Tabla Producto
CREATE TABLE Producto(
id_Producto INT IDENTITY(1,1) PRIMARY KEY,
Nombre NVARCHAR(100) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
Stock INT NOT NULL DEFAULT 0,
id_Categoria INT NOT NULL,
Codigo NVARCHAR(50) NOT NULL,
Activo BIT NOT NULL DEFAULT 1
);
Go

--Tabla de categorías de productos
CREATE TABLE Categoria(
id_Categoria INT IDENTITY(1,1) PRIMARY KEY,
Nombre NVARCHAR(50) NOT NULL
);
GO