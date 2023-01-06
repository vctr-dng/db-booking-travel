CREATE TRIGGER `agencevoyage`.`annuleReservation`
AFTER UPDATE ON `reservation`
FOR EACH ROW
BEGIN
    IF !(OLD.effective <=> NEW.effective) AND NEW.effective = false THEN
        UPDATE circuitimminent
        SET nb_places_reservees = nb_places_reservees - 1
        WHERE
        circuitimminent.id_circuit IN
            (SELECT circuitimminent.id_circuit
            FROM circuitimminent, devis, reservation
            WHERE
            circuitimminent.id_circuit = devis.id_circuit AND
            devis.id_devis = reservation.id_devis AND
            reservation.id_reservation = NEW.id_reservation);
    END IF;
END