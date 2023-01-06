CREATE TRIGGER annulationReservations
AFTER UPDATE
ON reservation FOR EACH ROW
BEGIN
    IF !(OLD.effective <=> NEW.effective) AND NEW.effective = false THEN

        UPDATE circuit
        SET nb_places_reservees = nb_places_reservees - 1
        WHERE
        circuit.id_circuit IN
            (SELECT circuitEchue.id_circuit
            FROM circuitEchue, devis, reservation
            WHERE
            circuitEchue.id_circuit = devis.id_circuit AND
            devis.id_devis = reservation.id_devis AND
            resevation.id_reservation = NEW.id_reservation);
            
    END IF
END