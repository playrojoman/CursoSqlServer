USE CursoSqlServer;
GO
-- Inserción de datos a la base

-- 1. insertar categorias
INSERT INTO Categoria
(
    Nombre
)
VALUES
    ('Electronica'),
    ('Jugueteria'),
    ('Comida'),
    ('Decoracion');
GO

-- 2. Ingresar los productos
INSERT INTO Producto
(
    Nombre,
    Precio,
    Stock,
    id_Categoria,
    Codigo
)
VALUES
    ('Celular',2399.99,15,1,'a-113'), --Categoria: Electronica
    ('Manzana',5,20,3,'b-201'), --Categoria: Comida
    ('UNO',99.99,15,2,'f-415'), --Categoria: Jugueteria
    ('Lampara vintage',500,20,4,'a-341'), --Categoria: Decoracion
    ('Laptop Gamer',20500,5,1,'c-331'), --Categoria: Electrónica
    ('Lavadora',15000,6,1,'a-114'), --Categoria: Electronica
    ('Frijoles',25,30,3,'b-122'), --Categoria: Comida
    ('Monitor',3499.99,8,1,'g-314'), --Categoria: Electronica
    ('Pelota',59.99,15,2,'f-123'), --Categoria: Jugueteria
    ('Cable HDMI',89.99,30,1,'e-223') --Categoria: Electronica
GO

-- 3. Ingresar Empleados

INSERT INTO Empleado
(
    Nombre,
    Telefono,
    Correo
)
VALUES
    ('Roberto','3336352036','rob@gmail.com'),
    ('Juan','3345896215','juju@gmail.com'),
    ('Fernando','3387851064','fersi@gmail.com')
GO

-- 4. Ingresar Cliente sin correo
INSERT INTO Cliente
(
    Nombre,
    Telefono
)
VALUES
    ('Antonio', '3322501587')
GO

-- 5. Ingresar Clientes con correo
INSERT INTO Cliente
(
    Nombre,
    Telefono,
    Correo
)
VALUES
    ('Federico', '3346479520','fedede@hotmail.com'),
    ('Ana', '3345876325','anini@yahoo.com'),
    ('Cristian', '3365659874','tiancris@gmail.com'),
    ('Maria', '3356982015' ,'marimar@gmail.com')
GO

-- 6. Ingresar Pedidos
-- 6.1 Pedido de Federico (1 laptop, 2 hdmi)
Insert INTO Pedido
(
    id_Cliente,
    id_Empleado,
    total
)
VALUES 
(2,1,20679.98);

INSERT INTO DetallePedido
(
    id_Producto,
    id_Pedido,
    cantidad,
    Precio_Unitario,
    Subtotal
)
VALUES
    (5,1,1,20500, 20500),
    (10,1,2,89.99, 179.98);
GO

-- 6.2 Pedido para Ana (3 manzanas, 1 pelota)
Insert INTO Pedido
(
    id_Cliente,
    id_Empleado,
    total
)
VALUES 
(3,2,74.99);

INSERT INTO DetallePedido
(
    id_Producto,
    id_Pedido,
    cantidad,
    Precio_Unitario,
    Subtotal
)
VALUES
    (2,2,3,5, 15),
    (9,2,1,59.99, 59.99);
GO

-- 6.3 Pedido para antonio (2 frijoles)
INSERT INTO Pedido 
(
    id_Cliente,
    id_Empleado,
    total
)
VALUES 
(1,1,50);
INSERT INTO DetallePedido
(
    id_Producto,
    id_Pedido,
    cantidad,
    Precio_Unitario,
    Subtotal
)
VALUES
    (7,3,2,25,50);
GO