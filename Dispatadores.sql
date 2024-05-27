--disparadores
CREATE SEQUENCE seq_cuchillo START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_arma START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_skin START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_cp START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_tr START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_in START WITH 1 INCREMENT BY 1 NOCACHE;
------------------------------------------------------------
-- TRIGGER PARA GENERAR ID DE INVENTARIOS
CREATE OR REPLACE TRIGGER trg_autogenerar_idInventarios
BEFORE INSERT ON Inventarios
FOR EACH ROW
DECLARE
    v_prefix CHAR(1);
    v_sequence CHAR(4);
    v_nextval NUMBER;
BEGIN
    -- Determina el prefijo basado en el tipo de objeto
    IF :NEW.tipo = 'CUCHILLO' THEN
        v_prefix := 'C';
        SELECT seq_cuchillo.NEXTVAL INTO v_nextval FROM dual;
    ELSIF :NEW.tipo = 'ARMA' THEN
        v_prefix := 'A';
        SELECT seq_arma.NEXTVAL INTO v_nextval FROM dual;
    ELSIF :NEW.tipo = 'SKIN' THEN
        v_prefix := 'S';
        SELECT seq_skin.NEXTVAL INTO v_nextval FROM dual;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Tipo de objeto no válido');
    END IF;

    -- Formatea el valor numérico de la secuencia
    v_sequence := TO_CHAR(v_nextval, 'FM0000');

    -- Asigna el valor generado a la columna id
    :NEW.id := v_prefix || v_sequence;
END;
/

-- TRIGGER PARA GENERAR ID DE JUGADORES
CREATE OR REPLACE TRIGGER trg_autogenerar_idJugador
BEFORE INSERT ON Jugadores
FOR EACH ROW
BEGIN
    :NEW.idJugador := 'U' || LPAD(seq_jugador.NEXTVAL, 4, '0');
END;
/

-- TRIGGER PARA GENERAR ID DE TRANSACCIONES
CREATE OR REPLACE TRIGGER trg_autogenerar_idTransacciones
BEFORE INSERT ON TRASNSACCIONES
FOR EACH ROW
BEGIN
    :NEW.idTrasnsaccion := 'TR' || LPAD(seq_tr.NEXTVAL, 3, '0');
END;
/

-- TRIGGER PARA GENERAR ID DE INTERCAMBIOS
CREATE OR REPLACE TRIGGER trg_autogenerar_idIntercambios
BEFORE INSERT ON Intercambios
FOR EACH ROW
BEGIN
    :NEW.numero := 'IN' || LPAD(seq_in.NEXTVAL, 3, '0');
END;
/

-- TRIGGER PARA GENERAR ID DE COMPRAS
CREATE OR REPLACE TRIGGER trg_autogenerar_idCompras
BEFORE INSERT ON Compras
FOR EACH ROW
BEGIN
    :NEW.numero := 'CP' || LPAD(seq_cp.NEXTVAL, 3, '0');
END;
/

-- TRIGGER PARA GENERAR ID DE HISTORIALES
CREATE OR REPLACE TRIGGER trg_autogenerar_idHistoriales
BEFORE INSERT ON HISTORIALES
FOR EACH ROW
BEGIN
    :NEW.numero := 'HS' || LPAD(seq_tr.NEXTVAL, 3, '0');
END;
/
-- TRIGGER PARA GENERAR ID DE MONEDAS
CREATE OR REPLACE TRIGGER trg_autogenerar_idMoneda
BEFORE INSERT ON Monedas
FOR EACH ROW
DECLARE
    v_lastFourDigits VARCHAR2(4);
BEGIN
    -- Extraer los últimos cuatro dígitos del idJugador
    v_lastFourDigits := SUBSTR(:NEW.jugador, -4);

    -- Asignar el valor generado a la columna idMoneda
    :NEW.idMoneda := 'V' || v_lastFourDigits;
END;
/
