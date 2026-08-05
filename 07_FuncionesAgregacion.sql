USE CursoSqlServer;
GO

--Funciones de agregación
/*
--Cantidad de clientes
SELECT COUNT(*) AS TotalClientes
FROM Cliente;

--Cantidad de clientes que si tienen correo
SELECT COUNT(Correo) AS TotalClientesConCorreo
FROM Cliente;

--Suma Total de todos los valores de una columna
SELECT SUM(Total) AS VentasTotales
FROM Pedido;

--Calcular el valor promedio de una columna
SELECT AVG(Precio) AS PrecioPromedio
FROM Producto;

--Obtener el mayor valor de una columna
SELECT MAX(Precio) AS ProductoMasCaro
FROM Producto;

--Obtener el mayor valor con otros datos
SELECT Nombre, Precio 
FROM Producto 
WHERE Precio = (SELECT MAX(Precio) FROM Producto);

--Obtener el valor mínimo de una columna
SELECT MIN(Precio) AS ProductoMasBarato
FROM Producto;

--Combinación de datos
SELECT
    COUNT(*) AS TotalProductos,
    AVG(Precio) AS Promedio,
    MAX(Precio) AS MasCaro,
    MIN(Precio) AS MasBarato
FROM Producto;

--Seleccionar el promedio solo con productos activos
SELECT AVG(Precio) AS PrecioPromedio
FROM Producto
WHERE Activo = 1;
*/

--Practica
--Total productos
SELECT COUNT(*) AS TotalProductos
FROM Producto;

--Total empleados
SELECT COUNT(*) AS CantidadEmpleados
FROM Empleado;

--Total vendido
SELECT SUM(total) AS TotalVendido
FROM Pedido;

--Producto más caro
SELECT MAX(Precio) AS MasCaro
FROM Producto;

--Promedio productos
SELECT AVG(Precio) AS PrecioPromedio
FROM Producto;