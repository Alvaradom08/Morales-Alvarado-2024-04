    -- Intento de ingresar datos erróneos en la tabla Inventarios
-- Violación de clave primaria
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0001', 'CUCHILLO', 'Dragon', 1);
-- Intento de ingresar un tipo de dato incorrecto (color debe ser un número)
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0051', 'ARMA', 'Sword', 'Blue');

-- Intento de ingresar datos erróneos en la tabla InventarioTienda
-- Violación de clave primaria
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0001', 50.00, 'High-quality knife');
-- Intento de ingresar un tipo de dato incorrecto (precioV debe ser un número)
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0051', 'Invalid', 'Item description');

-- Intento de ingresar datos erróneos en la tabla DATOS
-- Violación de restricción de clave foránea (tienda no existe en InventarioTienda)
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-02-21', 'YYYY-MM-DD'), 120.00, 'C0051');

-- Intento de ingresar datos erróneos en la tabla Jugadores
-- Violación de clave primaria
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0001', 'Player1', 'player1@example.com', 'I0001');
-- Intento de ingresar un correo electrónico incorrecto
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0051', 'Player51', 'invalid_email', 'I0051');

-- Intento de ingresar datos erróneos en la tabla InventarioUsuarios
-- Violación de restricción de clave foránea (ID no existe en Inventarios)
INSERT INTO InventarioUsuarios(id, fechadecompra, fechadeintercambio, Jugador) VALUES('C0051', TO_DATE('2024-02-21', 'YYYY-MM-DD'), TO_DATE('2024-02-22', 'YYYY-MM-DD'), 'J0051');

-- Intento de ingresar datos erróneos en la tabla TRASNSACCIONES
-- Violación de restricción de clave foránea (tienda no existe en InventarioTienda)
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0051', 60.00, 1, TO_DATE('2024-02-21', 'YYYY-MM-DD'), 'C0051');

-- Intento de ingresar datos erróneos en la tabla Intercambios
-- Violación de clave primaria
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0001', 'C0001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'C0001');
-- Violación de restricción de clave foránea (usuario no existe en Jugadores)
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0051', 'C0051', TO_DATE('2024-02-21', 'YYYY-MM-DD'), 'J0051');

-- Intento de ingresar datos erróneos en la tabla Monedas
-- Violación de clave primaria
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0001', 200.00, 'J0001', 'I0001');
-- Intento de ingresar una cantidad de monedas negativa
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0051', -100.00, 'J0051', 'I0051');

-- Intento de ingresar datos erróneos en la tabla Compras
-- Violación de restricción de clave foránea (trasnsaccion no existe en TRASNSACCIONES)
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0051', TO_DATE('2024-02-21', 'YYYY-MM-DD'), 150.00, 'T0051');

-- Intento de ingresar datos erróneos en la tabla HISTORIALES
-- Violación de clave primaria
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0001', 'J0001', 'T0001');
-- Violación de restricción de clave foránea (trasnsaccion no existe en TRASNSACCIONES)
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0051', 'J0051', 'T0051');

-- Intento de ingresar datos erróneos en la tabla ARTICULOS
-- Violación de clave primaria
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0001', 'O0001');
-- Violación de restricción de clave foránea (historial no existe en HISTORIALES)
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0051', 'O0051');

-- Intento de ingresar datos erróneos en la tabla CARRITOS
-- Violación de restricción de clave foránea (jugador no existe en Jugadores)
INSERT INTO CARRITOS(jugador, compra) VALUES('J0051', 'C0051');

-- Intento de ingresar datos erróneos en la tabla CAMBIOS
-- Violación de restricción de clave foránea (jugador no existe en Jugadores)
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0051', 'I0051');
