-- Inserción en la tabla Inventarios
INSERT INTO Inventarios (tipo, nombre, color) VALUES ('CUCHILLO', 'Karambit', 2);
INSERT INTO Inventarios (tipo, nombre, color) VALUES ('ARMA', 'AK-47', 1);
INSERT INTO Inventarios (tipo, nombre, color) VALUES ('SKIN', 'Dragon Lore', 3);

-- Inserción en la tabla Jugadores
INSERT INTO Jugadores (nickName, correo, intercambio) VALUES ('PlayerOne', 'playerone@example.com', 'IN001');
INSERT INTO Jugadores (nickName, correo, intercambio) VALUES ('PlayerTwo', 'playertwo@example.com', 'IN002');

-- Inserción en la tabla TRANSACCIONES
INSERT INTO TRANSACCIONES (precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES (250.00, 1, SYSDATE, 'I001');

-- Inserción en la tabla Compras
INSERT INTO Compras (fecha, total, transaccion) VALUES (SYSDATE, 250.00, 'TR001');

-- Inserción en la tabla Intercambios
INSERT INTO Intercambios (objeto, fecha, usuario) VALUES ('I001', SYSDATE, 'I001');

-- Inserción en la tabla Monedas
INSERT INTO Monedas (cantidad, jugador, intercambio) VALUES (1000.00, 'U0001', 'IN001');
