
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0001', 'CUCHILLO', 'Dragon', 1);
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0002', 'ARMA', 'Phoenix', 2);
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0003', 'SKIN', 'Tiger', 3);
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0004', 'CUCHILLO', 'Wolf', 4);
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0005', 'ARMA', 'Eagle', 5);
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0048', 'ARMA', 'Griffin', 48);
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0049', 'SKIN', 'Lion', 49);
INSERT INTO Inventarios(id, tipo, nombre, color) VALUES('C0050', 'CUCHILLO', 'Leopard', 50);

INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0001', 50.00, 'High-quality knife');
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0002', 75.50, 'Standard pistol');
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0003', 30.00, 'Tiger skin');
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0004', 60.00, 'Wolf knife');
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0005', 80.00, 'Eagle rifle');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0048', 90.00, 'Griffin rifle');
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0049', 40.00, 'Lion skin');
INSERT INTO InventarioTienda(id, precioV, descripcion) VALUES('C0050', 70.00, 'Leopard knife');

INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-01-01', 'YYYY-MM-DD'), 100.00, 'C0001');
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-01-02', 'YYYY-MM-DD'), 150.00, 'C0002');
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-01-03', 'YYYY-MM-DD'), 120.00, 'C0003');
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-01-04', 'YYYY-MM-DD'), 80.00, 'C0004');
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-01-05', 'YYYY-MM-DD'), 60.00, 'C0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-02-18', 'YYYY-MM-DD'), 90.00, 'C0048');
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-02-19', 'YYYY-MM-DD'), 50.00, 'C0049');
INSERT INTO DATOS(fechaVenta, valorVenta, tienda) VALUES(TO_DATE('2024-02-20', 'YYYY-MM-DD'), 70.00, 'C0050');

INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0001', 'Player1', 'player1@example.com', 'I0001');
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0002', 'Player2', 'player2@example.com', 'I0002');
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0003', 'Player3', 'player3@example.com', 'I0003');
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0004', 'Player4', 'player4@example.com', 'I0004');
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0005', 'Player5', 'player5@example.com', 'I0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0048', 'Player48', 'player48@example.com', 'I0048');
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0049', 'Player49', 'player49@example.com', 'I0049');
INSERT INTO Jugadores(idJugador, nickName, correo, intercambio) VALUES('J0050', 'Player50', 'player50@example.com', 'I0050');

INSERT INTO InventarioUsuarios(id, fechadecompra, fechadeintercambio, Jugador) VALUES('C0001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'J0001');

INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0001', 50.00, 1, TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'C0001');
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0002', 75.00, 2, TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'C0002');
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0003', 30.00, 1, TO_DATE('2024-01-03', 'YYYY-MM-DD'), 'C0003');
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0004', 60.00, 3, TO_DATE('2024-01-04', 'YYYY-MM-DD'), 'C0004');
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0005', 80.00, 2, TO_DATE('2024-01-05', 'YYYY-MM-DD'), 'C0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0048', 90.00, 1, TO_DATE('2024-02-18', 'YYYY-MM-DD'), 'C0048');
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0049', 40.00, 1, TO_DATE('2024-02-19', 'YYYY-MM-DD'), 'C0049');
INSERT INTO TRASNSACCIONES(idTrasnsaccion, precioVenta, cantidadArticulos, fechaTransaccion, tienda) VALUES('T0050', 40.00, 1, TO_DATE('2024-02-19', 'YYYY-MM-DD'), 'C0050');

INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0001', 'C0001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 'C0001');
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0002', 'C0002', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 'C0002');
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0003', 'C0003', TO_DATE('2024-01-03', 'YYYY-MM-DD'), 'C0003');
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0004', 'C0004', TO_DATE('2024-01-04', 'YYYY-MM-DD'), 'C0004');
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0005', 'C0005', TO_DATE('2024-01-05', 'YYYY-MM-DD'), 'C0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0048', 'C0048', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 'C0048');
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0049', 'C0049', TO_DATE('2024-02-19', 'YYYY-MM-DD'), 'C0049');
INSERT INTO Intercambios(numero, objeto, fecha, usuario) VALUES('I0050', 'C0050', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 'C0050');

INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0001', 200.00, 'J0001', 'I0001');
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0002', 250.00, 'J0002', 'I0002');
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0003', 220.00, 'J0003', 'I0003');
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0004', 180.00, 'J0004', 'I0004');
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0005', 160.00, 'J0005', 'I0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0048', 210.00, 'J0048', 'I0048');
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0049', 190.00, 'J0049', 'I0049');
INSERT INTO Monedas(idMoneda, cantidad, jugador, intercambio) VALUES('M0050', 200.00, 'J0050', 'I0050');

INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0001', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 150.00, 'T0001');
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0002', TO_DATE('2024-01-02', 'YYYY-MM-DD'), 175.00, 'T0002');
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0003', TO_DATE('2024-01-03', 'YYYY-MM-DD'), 125.00, 'T0003');
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0004', TO_DATE('2024-01-04', 'YYYY-MM-DD'), 100.00, 'T0004');
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0005', TO_DATE('2024-01-05', 'YYYY-MM-DD'), 90.00, 'T0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0048', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 110.00, 'T0048');
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0049', TO_DATE('2024-02-19', 'YYYY-MM-DD'), 85.00, 'T0049');
INSERT INTO Compras(numero, fecha, total, trasnsaccion) VALUES('C0050', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 95.00, 'T0050');

INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0001', 'J0001', 'T0001');
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0002', 'J0002', 'T0002');
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0003', 'J0003', 'T0003');
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0004', 'J0004', 'T0004');
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0005', 'J0005', 'T0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0048', 'J0048', 'T0048');
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0049', 'J0049', 'T0049');
INSERT INTO HISTORIALES(numero, jugador, trasnsaccion) VALUES('H0050', 'J0050', 'T0050');

INSERT INTO ARTICULOS(historial, objeto) VALUES('H0001', 'O0001');
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0002', 'O0002');
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0003', 'O0003');
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0004', 'O0004');
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0005', 'O0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0048', 'O0048');
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0049', 'O0049');
INSERT INTO ARTICULOS(historial, objeto) VALUES('H0050', 'O0050');

INSERT INTO CARRITOS(jugador, compra) VALUES('J0001', 'C0001');
INSERT INTO CARRITOS(jugador, compra) VALUES('J0002', 'C0002');
INSERT INTO CARRITOS(jugador, compra) VALUES('J0003', 'C0003');
INSERT INTO CARRITOS(jugador, compra) VALUES('J0004', 'C0004');
INSERT INTO CARRITOS(jugador, compra) VALUES('J0005', 'C0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO CARRITOS(jugador, compra) VALUES('J0048', 'C0048');
INSERT INTO CARRITOS(jugador, compra) VALUES('J0049', 'C0049');
INSERT INTO CARRITOS(jugador, compra) VALUES('J0050', 'C0050');

INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0001', 'I0001');
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0002', 'I0002');
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0003', 'I0003');
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0004', 'I0004');
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0005', 'I0005');
/* ... repetido hasta alcanzar 50 registros ... */
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0048', 'I0048');
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0049', 'I0049');
INSERT INTO CAMBIOS(jugador, intercambio) VALUES('J0050', 'I0050');






