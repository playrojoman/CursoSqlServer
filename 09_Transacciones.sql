USE CursoSqlServer;
GO

--Transacciones, para más seguridad si no pasa nada sigue, si falla se resetea
--Indica que a partir guarde
BEGIN TRANSACTION;

UPDATE Producto
SET Precio = 8899.99
WHERE id_Producto = 1;

UPDATE Producto
SET Stock = 30
WHERE id_Producto = 8;
--GUARDA TODOS LOS CAMBIOS
COMMIT;

SELECT * FROM Producto;

BEGIN TRANSACTION;

UPDATE Producto
SET Precio = 1
WHERE id_producto = 5;

UPDATE Producto
SET STOCK = 200
WHERE id_Producto = 9;

ROLLBACK;

SELECT * FROM Producto;