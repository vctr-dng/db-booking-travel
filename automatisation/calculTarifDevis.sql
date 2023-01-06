CREATE PROCEDURE `calculTarifDevis`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT tarifDevis DECIMAL(8,2))
BEGIN
	SELECT reservation.tarif_initial
    FROM resevation, client, circuit
    WHERE
    reservation.id_client = client.id_client AND
    reservation.id_circuit = circuit.id_circuit AND

    client.prenom = PRENOM AND
    client.nom = NOM AND
    circuit.id_periode = IDperiode

    INTO tarifDevis;
END