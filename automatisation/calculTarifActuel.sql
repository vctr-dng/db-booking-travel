CREATE PROCEDURE `calculTarifActuel`(IN IDperiode INT, IN IDcircuit INT, OUT tarifActuel DECIMAL(8,2))
BEGIN

    /*
    On récupère le circuit à partir de sa clé primaire
    On récupère le tarif actuel du circuit par son attribut associé
    */

	SELECT circuit.tarif
    FROM circuit
    WHERE
    id_circuit = IDcircuit AND
    id_periode = IDperiode

    INTO tarifActuel;
    
END