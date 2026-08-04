USE CursoSqlServer;
GO

-- Relación Pedido - Cliente
ALTER TABLE Pedido
ADD CONSTRAINT FK_Pedido_Cliente
FOREIGN KEY (id_Cliente)
REFERENCES Cliente(id_Cliente);
GO

-- Relación Pedido - Empleado
ALTER TABLE Pedido 
ADD CONSTRAINT FK_Pedido_Empleado
FOREIGN KEY (id_Empleado)
REFERENCES Empleado(id_Empleado);
GO

-- Relación DetallePedido - Pedido
ALTER TABLE DetallePedido
ADD CONSTRAINT FK_DetallePedido_Pedido
FOREIGN KEY (id_Pedido)
REFERENCES Pedido(id_Pedido);
GO

-- Relación DetallePedido - Producto
ALTER TABLE DetallePedido
ADD CONSTRAINT FK_DetallePedido_Producto
FOREIGN KEY (id_Producto)
REFERENCES Producto(id_Producto);
GO

-- Relación Producto - Categoria
ALTER TABLE Producto
ADD CONSTRAINT FK_Producto_Categoria
FOREIGN KEY (id_Categoria)
REFERENCES Categoria(id_Categoria);
GO
