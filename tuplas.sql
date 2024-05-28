/*TUPLAS*/
ALTER TABLE INVENTARIOUSUARIOS ADD CONSTRAINT CK_FECHAS CHECK (fechadeintercambio > fechadecompra OR fechadeintercambio IS NULL);
