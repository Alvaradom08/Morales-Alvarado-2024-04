CREATE OR REPLACE PACKAGE PC_INVENTARIOS IS
    PROCEDURE adicionar(xTipo IN VARCHAR, xNombre IN VARCHAR, xColor IN NUMBER, xPrecioV IN NUMBER, xDescripcion IN VARCHAR);
    PROCEDURE mod_articulo(xNombre IN VARCHAR, xDescripcion IN VARCHAR);
    FUNCTION co_articulo(xNombre IN VARCHAR) RETURN SYS_REFCURSOR;
END;
------------------------------------------------------------
CREATE OR REPLACE PACKAGE PC_COMPRAS IS
    PROCEDURE add_compra(xArticulo IN CHAR);
    PROCEDURE del_compra(xNumeroC IN CHAR);
    PROCEDURE del_transaccion(xIdTransaccion IN CHAR);
    FUNCTION co_compra(xFecha IN DATE) RETURN SYS_REFCURSOR;
    FUNCTION co_transaccion(xIdTransaccion IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_historial(xNumeroH IN CHAR) RETURN SYS_REFCURSOR;
END;
------------------------------------------------------------
CREATE OR REPLACE PACKAGE PC_INTERCAMBIOS IS
    PROCEDURE add_moneda(xCantidad IN NUMBER, xIdJugador IN CHAR);
    PROCEDURE add_jugador(xNickName IN VARCHAR, xCorreo IN VARCHAR);
    PROCEDURE mod_correo(xCorreo IN VARCHAR, xNickName IN VARCHAR);
    PROCEDURE mod_jugador(xNickName IN VARCHAR,xCorreo IN VARCHAR);
    PROCEDURE del_jugador(xNickName IN CHAR);
    FUNCTION co_intercambio(xObjeto IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_jugador(xNickName IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_correo(xCorreo IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_monedas(xIdJugador IN CHAR) RETURN SYS_REFCURSOR;
END;