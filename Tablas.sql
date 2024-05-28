/*TABLAS*/
CREATE TABLE Inventarios(
    id CHAR(5) NOT NULL,
    tipo VARCHAR(8) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    color NUMBER (2) NOT NULL
);

CREATE TABLE InventarioTienda(
    id CHAR(5) NOT NULL,
    precioV NUMBER(5,2)NOT NULL,
    descripcion VARCHAR(100) NOT NULL
);

CREATE TABLE DATOS (
    fechaVenta DATE NOT NULL,
    valorVenta NUMBER (5,2) NOT NULL,
    tienda CHAR(5) NOT NULL
);

CREATE TABLE InventarioUsuarios (
    id CHAR (5) NOT NULL,
    fechadecompra DATE NOT NULL, 
    fechadeintercambio DATE NULL,
    Jugador CHAR(5) NOT NULL
);

CREATE TABLE Jugadores (
    idJugador CHAR(5) NOT NULL,
    nickName VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    intercambio CHAR(5)NOT NULL
);

CREATE TABLE HISTORIALES (
    numero CHAR (5) NOT NULL,
    jugador CHAR (5) NOT NULL,
    transaccion CHAR (5) NOT NULL
);

CREATE TABLE ARTICULOS (
    historial CHAR (5) NOT NULL,
    objeto CHAR (5)
);

CREATE TABLE CARRITOS (
    jugador CHAR (5) NOT NULL,
    compra CHAR (5) NOT NULL
);

CREATE TABLE CAMBIOS (
     jugador CHAR (5) NOT NULL,
     intercambio CHAR (5) NOT NULL
);

CREATE TABLE Compras (
    numero CHAR(5) NOT NULL,
    fecha DATE NOT NULL,
    total NUMBER(5,2) NOT NULL,
    transaccion CHAR (5) NOT NULL
);

CREATE TABLE Monedas (
    idMoneda CHAR(5) NOT NULL,
    cantidad NUMBER(5,2)NOT NULL,
    jugador CHAR (5) NOT NULL,
    intercambio CHAR (5) NOT NULL
);

CREATE TABLE Intercambios (
    numero CHAR(5) NOT NULL,
    objeto CHAR(5) NOT NULL,
    fecha DATE NOT NULL,
    usuario CHAR (5) NOT NULL
);

CREATE TABLE TRANSACCIONES (
    idTransaccion CHAR (5) NOT NULL,
    precioVenta NUMBER (5,2) NOT NULL,
    cantidadArticulos NUMBER (1) NOT NULL,
    fechaTransaccion DATE NOT NULL,
    tienda CHAR (5) NOT NULL
);
