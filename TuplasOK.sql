-- Insertar datos en la tabla Inventarios
INSERT INTO Inventarios (id, tipo, nombre, color) VALUES ('I001', 'ARMA', 'AK-47', 1);
INSERT INTO Inventarios (id, tipo, nombre, color) VALUES ('I002', 'CUCHILLO', 'Karambit', 2);

-- Insertar datos en la tabla InventarioTienda
INSERT INTO InventarioTienda (id, precioV, descripcion) VALUES ('I001', 250.00, 'AK-47 con camuflaje');
INSERT INTO InventarioTienda (id, precioV, descripcion) VALUES ('I002', 150.00, 'Karambit de alta calidad');

-- Insertar datos en la tabla DATOS
INSERT INTO DATOS (fechaVenta, valorVenta, tienda) VALUES (SYSDATE, 250.00, 'I001');

-- Insertar datos en la tabla InventarioUsuarios
INSERT INTO InventarioUsuarios (id, fechadecompra, fechadeintercambio, Jugador) VALUES ('I001', TO_DATE('2023-01-01', 'YYYY-MM-DD'), NULL, 'J001');
INSERT INTO InventarioUsuarios (id, fechadecompra, fechadeintercambio, Jugador) VALUES ('I002', TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 'J002');

-- Insertar datos en la tabla Jugadores
INSERT INTO Jugadores (idJugador, nickName, correo, intercambio) VALUES ('J001', 'PlayerOne', 'playerone@example.com', 'I001');
INSERT INTO Jugadores (idJugador, nickName, correo, intercambio) VALUES ('J002', 'PlayerTwo', 'playertwo@example.com', 'I002');

-- Insertar datos en la tabla HISTORIALES
INSERT INTO HISTORIALES (numero, jugador, transaccion) VALUES ('H001', 'J001', 'T001');

-- Insertar datos en la tabla ARTICULOS
INSERT INTO ARTICULOS (historial, objeto) VALUES ('H001', 'I001');