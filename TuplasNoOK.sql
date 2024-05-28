-- Intentar insertar un tipo no permitido en la tabla Inventarios
INSERT INTO Inventarios (id, tipo, nombre, color) VALUES ('I003', 'ESCUDO', 'Shield', 3);  -- Violación de CK_INVENTARIO_TIPO

-- Intentar insertar un precio no permitido en la tabla InventarioTienda
INSERT INTO InventarioTienda (id, precioV, descripcion) VALUES ('I003', -50.00, 'Item con precio negativo');  -- Violación de CK_INVENTARIOTIENDA_PRECIOV

-- Intentar insertar un correo no válido en la tabla Jugadores
INSERT INTO Jugadores (idJugador, nickName, correo, intercambio) VALUES ('J003', 'PlayerThree', 'playerthree.com', 'I003');  -- Violación de CK_JUGADORES_CORREO

-- Intentar insertar una cantidad negativa en la tabla Monedas
INSERT INTO Monedas (idMoneda, cantidad, jugador, intercambio) VALUES ('M002', -500.00, 'J001', 'I002');  -- Violación de CK_MONEDA_CANTIDAD

-- Intentar insertar una fecha de intercambio anterior a la fecha de compra en la tabla InventarioUsuarios
INSERT INTO InventarioUsuarios (id, fechadecompra, fechadeintercambio, Jugador) VALUES ('I003', TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2023-02-01', 'YYYY-MM-DD'), 'J003');  -- Violación de CK_FECHAS
