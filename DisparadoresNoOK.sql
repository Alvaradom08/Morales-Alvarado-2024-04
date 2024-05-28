
INSERT INTO Inventarios (tipo, nombre, color) VALUES ('ESCUDO', 'Shield', 1);
INSERT INTO Jugadores (nickName, correo, intercambio) VALUES ('InvalidPlayer', 'invalidemail', 'IN003');
INSERT INTO TRANSACCIONES (precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES (-250.00, 1, SYSDATE, 'I001');
INSERT INTO Compras (fecha, total, transaccion) VALUES (SYSDATE, 100.00, 'TR999');
INSERT INTO Monedas (cantidad, jugador, intercambio) VALUES (-500.00, 'U0001', 'IN001');
