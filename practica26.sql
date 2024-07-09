-- RETO DE CLASE 26 USANDO PRACTICA 24

CREATE OR REPLACE VIEW VW_PRODUCTOS AS
SELECT p.producto_id, p.nombre, m.marca_id
FROM productos AS p
INNER JOIN marcas AS m ON p.marca_id = m.marca_id
WHERE p.producto_id IN (1,2,3)

DROP VIEW VW_PRODUCTOS

