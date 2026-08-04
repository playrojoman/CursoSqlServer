Use CursoSqlServer;
GO

--Selección de todas las información
--SELECT * FROM Producto;

--Selección columnas específicas
--SELECT Nombre, Precio, Stock FROM Producto;

--Selección primeros 3 registros ambas funcionan
--SELECT TOP 3 Nombre, Stock FROM Producto;
--SELECT TOP (3) Nombre, Stock FROM Producto;

--Selección con filtro
--SELECT Nombre, Precio FROM Producto Where Precio > 1000;

--Selección con ordenamiento NADA para ascendente, DESC para descendiente
--SELECT id_Producto, Nombre, Precio FROM Producto ORDER BY Precio;

--Selección con Join básica, conocer cuales clientes han comprado
/*
SELECT
	Cliente.Nombre,
	Pedido.total
FROM CLIENTE
INNER JOIN Pedido
ON Cliente.id_Cliente = Pedido.id_Cliente;
*/

--Seleccion tengan o no pedidos con LEFT JOIN
/*
SELECT
	Cliente.Nombre,
	Pedido.id_Pedido
FROM CLIENTE
LEFT JOIN Pedido
    ON Cliente.id_Cliente = Pedido.id_Cliente
WHERE Pedido.id_Pedido IS NULL;
*/

--Selección de los pedidos con información más completa
/*
SELECT
    Pedido.id_Pedido,
    Cliente.Nombre AS Cliente,
    Empleado.Nombre AS Empleado,
    Producto.Nombre AS Producto,
    DetallePedido.Cantidad,
    DetallePedido.Precio_Unitario,
    DetallePedido.Subtotal,
    Pedido.Total
FROM Pedido
INNER JOIN Cliente
    ON Pedido.id_Cliente = Cliente.id_Cliente
INNER JOIN Empleado
    ON Pedido.id_Empleado = Empleado.id_Empleado
INNER JOIN DetallePedido
    ON Pedido.id_Pedido = DetallePedido.id_Pedido
INNER JOIN Producto
    ON DetallePedido.id_Producto = Producto.id_Producto
ORDER BY Pedido.id_Pedido;
*/

