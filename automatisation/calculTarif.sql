CREATE PROCEDURE `calculTarif`(IN IDperiode INT, IN IDcircuit INT, OUT tarifCalcule DECIMAL(8,2))
BEGIN
	SELECT tarif
    FROM circuit
    WHERE id_circuit = IDcircuit AND id_periode = IDperiode
    INTO tarifCalcule;
END