SELECT
    fk.name AS ForeignKey,
    OBJECT_SCHEMA_NAME(fk.parent_object_id) AS EsquemaOrigen,
    OBJECT_NAME(fk.parent_object_id) AS TablaOrigen,
    COL_NAME(fkc.parent_object_id, fkc.parent_column_id) AS ColumnaOrigen,
    OBJECT_SCHEMA_NAME(fk.referenced_object_id) AS EsquemaDestino,
    OBJECT_NAME(fk.referenced_object_id) AS TablaDestino,
    COL_NAME(fkc.referenced_object_id, fkc.referenced_column_id) AS ColumnaDestino
FROM sys.foreign_keys fk
INNER JOIN sys.foreign_key_columns fkc
    ON fk.object_id = fkc.constraint_object_id
ORDER BY TablaOrigen, TablaDestino;