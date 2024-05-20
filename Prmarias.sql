ALTER TABLE Inventarios
ADD CONSTRAINT pk_inventarios PRIMARY KEY (id);

ALTER TABLE InventarioTienda
ADD CONSTRAINT pk_inventarioTienda PRIMARY KEY (id);

ALTER TABLE InventarioUsuarios
ADD CONSTRAINT pk_inventarioUsuarios PRIMARY KEY (id);

ALTER TABLE DATOS
ADD CONSTRAINT pk_datos PRIMARY KEY (tienda);

ALTER TABLE TRASNSACCIONES
ADD CONSTRAINT pk_trasnsacciones PRIMARY KEY (idTrasnsaccion);

ALTER TABLE ARTICULOS
ADD CONSTRAINT pk_articulos PRIMARY KEY (historial);

ALTER TABLE HISTORIALES
ADD CONSTRAINT pk_historiales PRIMARY KEY (numero);

ALTER TABLE Compras
ADD CONSTRAINT pk_compras PRIMARY KEY (numero);

ALTER TABLE CARRITOS
ADD CONSTRAINT pk_carritos PRIMARY KEY (jugador, compra);

ALTER TABLE CAMBIOS
ADD CONSTRAINT pk_cambios PRIMARY KEY (jugador, intercambio);

ALTER TABLE Intercambios
ADD CONSTRAINT pk_intercambios PRIMARY KEY (numero);    

ALTER TABLE JUGADORES
ADD CONSTRAINT pk_jugadores PRIMARY KEY (IDJUGADOR);


