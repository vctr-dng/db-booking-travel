CREATE TRIGGER `agencevoyage`.`ajoutReservation`
AFTER INSERT ON `reservation`
FOR EACH ROW
BEGIN
    DECLARE nbrReservation INT;
    DECLARE IDclient INT;
    DECLARE IDcircuit INT;

    SELECT devis.id_client, devis.id_circuit
    FROM devis
    WHERE devis.id_devis = NEW.id_devis
    INTO IDclient, IDcircuit;

    CALL nombreReservationCircuit(IDclient, IDcircuit, nbrReservation);

    IF (@nbrReservation >= 1) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Règle 7 non respectée';
    END IF;
END