CREATE PROCEDURE `rechercheDevis`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT IDdevis INT)
BEGIN
    SELECT devis.id_devis
    FROM devis, client, circuit
    WHERE
    client.id_client = devis.id_client AND
    client.nom = NOM AND
    client.prenom = PRENOM AND

    circuit.id_circuit = devis.id_circuit
    circuit.id_circuit = IDcircuit AND
    circuit.id_periode = IDperiode

    INTO IDdevis;
END