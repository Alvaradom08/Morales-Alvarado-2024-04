CREATE SEQUENCE seq_cuchillo START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_arma START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_skin START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE OR REPLACE TRIGGER trg_autogenerar_id
BEFORE INSERT ON Inventario
FOR EACH ROW
DECLARE
    v_prefix CHAR(1);
    v_sequence CHAR(4);
    v_nextval NUMBER;
BEGIN
    -- Determina el prefijo basado en el tipo de objeto
    IF :NEW.tipo = 'cuchillo' THEN
        v_prefix := 'C';
        SELECT seq_cuchillo.NEXTVAL INTO v_nextval FROM dual;
    ELSIF :NEW.tipo = 'arma' THEN
        v_prefix := 'A';
        SELECT seq_arma.NEXTVAL INTO v_nextval FROM dual;
    ELSIF :NEW.tipo = 'skin' THEN
        v_prefix := 'S';
        SELECT seq_skin.NEXTVAL INTO v_nextval FROM dual;
    ELSE
        RAISE_APPLICATION_ERROR(-20001, 'Tipo de objeto no v�lido');
    END IF;

    -- Formatea el valor num�rico de la secuencia
    v_sequence := TO_CHAR(v_nextval, 'FM0000');

    -- Asigna el valor generado a la columna id
    :new.id := v_prefix || v_sequence;
END;


CREATE SEQUENCE seq_jugador START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE OR REPLACE TRIGGER trg_autogenerar_idJugador
BEFORE INSERT ON Jugador
FOR EACH ROW
BEGIN
    :NEW.idJugador := 'U' || LPAD(seq_jugador.NEXTVAL, 4, '0');
END;

CREATE SEQUENCE seq_cp START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_tr START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE seq_in START WITH 1 INCREMENT BY 1 NOCACHE;

CREATE OR REPLACE TRIGGER trg_autogenerar_id_transacciones
BEFORE INSERT ON TRANSACCIONES
FOR EACH ROW
DECLARE
    v_sequence CHAR(3);
    v_nextval NUMBER;
BEGIN
    SELECT seq_tr.NEXTVAL INTO v_nextval FROM dual;

    -- Formatear el valor num�rico de la secuencia
    v_sequence := LPAD(v_nextval, 3, '0');

    -- Asignar el valor generado a la columna idTransaccione
    :NEW.idTransaccione := 'TR' || v_sequence;
END;

CREATE OR REPLACE TRIGGER trg_autogenerar_id_intercambios
BEFORE INSERT ON INTERCAMBIOS
FOR EACH ROW
DECLARE
    v_sequence CHAR(3);
    v_nextval NUMBER;
BEGIN
    SELECT seq_in.NEXTVAL INTO v_nextval FROM dual;

    -- Formatear el valor num�rico de la secuencia
    v_sequence := LPAD(v_nextval, 3, '0');

    -- Asignar el valor generado a la columna numero
    :NEW.numero := 'IN' || v_sequence;
END;

CREATE OR REPLACE TRIGGER trg_autogenerar_id_compras
BEFORE INSERT ON COMPRAS
FOR EACH ROW
DECLARE
    v_sequence CHAR(3);
    v_nextval NUMBER;
BEGIN
    SELECT seq_cp.NEXTVAL INTO v_nextval FROM dual;

    -- Formatear el valor num�rico de la secuencia
    v_sequence := LPAD(v_nextval, 3, '0');

    -- Asignar el valor generado a la columna numero
    :NEW.numero := 'CP' || v_sequence;
END;

CREATE OR REPLACE TRIGGER trg_autogenerar_id_historiales
BEFORE INSERT ON HISTORIALES
FOR EACH ROW
DECLARE
    v_sequence CHAR(3);
    v_nextval NUMBER;
BEGIN
    SELECT seq_tr.NEXTVAL INTO v_nextval FROM dual;

    -- Formatear el valor num�rico de la secuencia
    v_sequence := LPAD(v_nextval, 3, '0');

    -- Asignar el valor generado a la columna numero
    :NEW.numero := 'TR' || v_sequence;
END;

CREATE OR REPLACE TRIGGER trg_autogenerar_idMoneda
BEFORE INSERT ON MONEDAS
FOR EACH ROW
DECLARE
    v_lastFourDigits VARCHAR2(4);
BEGIN
    -- Extraer los �ltimos cuatro d�gitos del �ltimo idJugador generado
    SELECT SUBSTR(:NEW.idJugador, 2) INTO v_lastFourDigits FROM dual;

    -- Asignar el valor generado a la columna idMoneda
    :NEW.idMoneda := 'V' || v_lastFourDigits;
END;

DROP TRIGGER trg_autogenerar_idMoneda;


