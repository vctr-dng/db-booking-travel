CREATE PROCEDURE `calculTarifActuel`(IN IDperiode INT, IN IDcircuit INT, OUT tarifActuel DECIMAL(8,2))
BEGIN
	SELECT tarif
    FROM circuit

    WHERE id_circuit = IDcircuit AND
    id_periode = IDperiode

    INTO tarifActuel;
END