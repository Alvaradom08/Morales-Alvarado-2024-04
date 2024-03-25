--Consultas

SELECT i.nombre, iu.fechadecompra, SUM(c.total) AS total_gastado
FROM Inventario i
INNER JOIN InventarioUsuario iu ON i.idObjeto = iu.idObjeto
INNER JOIN Compra c ON iu.fechadecompra = c.fecha
GROUP BY i.nombre, iu.fechadecompra
ORDER BY total_spent DESC;

SELECT l.precioventa
FROM Linea l
INNER JOIN Inventario i ON l.objeto = i.tipo
WHERE i.nombre = 'Tiburon'