USE CursoSqlServer;
GO
--Actualización y eliminación de registros

--Actualizar el precio de laptop gamer
UPDATE Producto 
SET Precio = 3799.99
WHERE id_Producto = 5;

SELECT Nombre, Precio FROM Producto 
WHERE id_Producto = 5;

--Borrado lógico de lavadora
UPDATE Producto
SET Activo = 0
WHERE id_Producto = 6;

SELECT Nombre, Activo FROM Producto 
WHERE id_Producto = 6;

--Eliminar Laptop Gamer
DELETE FROM Producto
WHERE id_Producto = 5;