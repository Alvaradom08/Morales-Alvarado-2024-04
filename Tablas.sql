--Tablas

CREATE TABLE Inventario(
    idInventario CHAR(5) NOT NULL,
    idObjeto CHAR(5) NOT NULL,
    tipo VARCHAR(8) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    color INT NOT NULL
);

CREATE TABLE InventarioTienda(
    idObjeto CHAR(5) NOT NULL,
    precioV NUMBER(5,2)NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    precioR NUMBER(5,2) NOT NULL
);

CREATE TABLE InventarioUsuario (
    idObjeto CHAR(5) NOT NULL,
    fechadecompra DATE NULL, 
    fechadeintercambio DATE NULL,
    idJugador CHAR(5) NOT NULL
);

CREATE TABLE Linea (
    idLinea CHAR(5) NOT NULL,
    precioVenta NUMBER(5,2) NOT NULL
);

CREATE TABLE Compra (
    idLinea CHAR(5) NOT NULL,
    numero CHAR(5) NOT NULL,
    fecha DATE NOT NULL,
    total NUMBER(5,2) NOT NULL
);

CREATE TABLE Jugador (
    idJugador CHAR(5) NOT NULL,
    nickName VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL
);

CREATE TABLE Moneda (
    idMoneda CHAR(5) NOT NULL,
    cantidad NUMBER(5,2) NOT NULL,
    tipodemoneda CHAR(13) NOT NULL
);

CREATE TABLE Intercambio (
    numero CHAR(5) NOT NULL,
    objeto CHAR(5) NOT NULL,
    valor NUMBER(5,2) NOT NULL,
    fecha DATE NOT NULL
);

CREATE TABLE Articulo (
    idInventario CHAR(5) NOT NULL,
    idLinea CHAR(5) NOT NULL,
    precioVenta NUMBER(5,2) NOT NULL
);

CREATE TABLE Objeto (
    numero CHAR(5) NOT NULL,
    idObjeto CHAR(5) NOT NULL,
    nombre VARCHAR(50) NOT NULL
);
