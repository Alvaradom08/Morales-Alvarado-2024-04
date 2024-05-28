CREATE OR REPLACE PACKAGE PA_ADMINISTRADOR IS
    PROCEDURE adicionar(xTipo IN VARCHAR, xNombre IN VARCHAR, xColor IN NUMBER, xPrecioV IN NUMBER, xDescripcion IN VARCHAR);
    PROCEDURE mod_articulo(xPrecioV IN NUMBER, xDescripcion IN VARCHAR);
    PROCEDURE del_transaccion(xIdTransaccion IN CHAR);
    FUNCTION co_articulo(xNombre IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_historial(xNumeroH IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_transaccion(xIdTransaccion IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_monedas(xIdMoneda IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_jugador(xNickName IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_intercambio(xObjeto IN CHAR) RETURN SYS_REFCURSOR;
END;
------------------------------------------------------------
CREATE OR REPLACE PACKAGE PA_JUGADOR IS
    PROCEDURE add_jugador(xNickName IN VARCHAR, xCorreo IN VARCHAR);
    PROCEDURE add_compra(xFecha IN DATE, xTotal IN NUMBER, xIdTransaccion IN CHAR);
    --PROCEDURE add_moneda(xCantidad IN NUMBER, xIdJugador IN CHAR);
    PROCEDURE mod_jugador(xNickName IN VARCHAR,xCorreo IN VARCHAR);
    PROCEDURE mod_correo(xCorreo IN VARCHAR, xNickName IN VARCHAR);
    PROCEDURE del_compra(xNumeroC IN CHAR);
    PROCEDURE del_jugador(xNickName IN CHAR);
    FUNCTION co_articulo(xNombre IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_compra(xFecha IN DATE) RETURN SYS_REFCURSOR;
    FUNCTION co_jugador(xNickName IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_intercambio(xObjeto IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_correo(xCorreo IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_monedas(xIdJugador IN CHAR) RETURN SYS_REFCURSOR;
END;
------------------------------------------------------------
CREATE OR REPLACE PACKAGE PA_GERENTE IS
    FUNCTION co_articulo(xNombre IN VARCHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_compra(xFecha IN DATE) RETURN SYS_REFCURSOR;
    FUNCTION co_transaccion(xIdTransaccion IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_historial(xNumeroH IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_intercambio(xObjeto IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_jugador(xNickName IN CHAR) RETURN SYS_REFCURSOR;
    FUNCTION co_monedas(xIdMoneda IN CHAR) RETURN SYS_REFCURSOR;
END;