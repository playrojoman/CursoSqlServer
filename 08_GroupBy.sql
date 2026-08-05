USE CursoSqlServer;
GO

--Leccion sobre GROUP BY
/*
--Conteo con solo una tabla
SELECT id_Cliente,COUNT(*) AS CantidadPedidos
FROM Pedido
GROUP BY id_Cliente;


--GROUP BY con Join, en este caso para obtener el nombre de los clientes
SELECT
    Cliente.Nombre,
    COUNT(*) AS CantidadPedidos
FROM Pedido
INNER JOIN Cliente
    ON Pedido.id_Cliente = Cliente.id_Cliente
GROUP BY Cliente.Nombre;

--Seleccionar cuantos productos hay en cada categoria
SELECT
    Categoria.Nombre,
    COUNT(*) AS CantidadProductos
FROM Producto
INNER JOIN Categoria
    ON Producto.id_Categoria = Categoria.id_Categoria
GROUP BY Categoria.Nombre;

--Seleccionar cuanto vendió de cada empleado
SELECT
    Empleado.Nombre,
    SUM(Pedido.Total) AS TotalVendido
FROM Pedido
INNER JOIN Empleado
    ON Pedido.id_Empleado = Empleado.id_Empleado
GROUP BY Empleado.Nombre;

--Agrupar aunque no haya registros
SELECT
    Cliente.Nombre,
    COUNT(Pedido.id_Pedido) AS CantidadPedidos
FROM Cliente
LEFT JOIN Pedido
    ON Cliente.id_Cliente = Pedido.id_Cliente
GROUP BY Cliente.Nombre;

*/

--Práctica
--Cantidad pedidos por empleado
SELECT
    Empleado.Nombre,
    COUNT(*) AS Totalpedidos
FROM Pedido
INNER JOIN Empleado
    ON Pedido.id_Empleado = Empleado.id_Empleado
GROUP BY Empleado.Nombre;

--Cantidad Vendido de cada empleado
SELECT
    Empleado.Nombre,
    SUM(Pedido.Total) AS TotalVendido
FROM Pedido
INNER JOIN Empleado
    ON Pedido.id_Empleado = Empleado.id_Empleado
GROUP BY Empleado.Nombre;

--Cantidad de productos por categoria
SELECT
    Categoria.Nombre,
    COUNT(*) AS CantidadProductos
FROM Producto
INNER JOIN Categoria
    ON Producto.id_Categoria = Categoria.id_Categoria
GROUP BY Categoria.Nombre;

--Cantidad Pedidos cliente
SELECT
    Cliente.Nombre,
    COUNT(*) AS CantidadPedidos
FROM Pedido
INNER JOIN Cliente
    ON Pedido.id_Cliente = Cliente.id_Cliente
GROUP BY Cliente.Nombre;
