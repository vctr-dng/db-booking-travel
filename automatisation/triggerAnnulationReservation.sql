CREATE TRIGGER annulationReservations
AFTER UPDATE
ON reservation FOR EACH ROW
BEGIN
    IF !(OLD.effective <=> NEW.effective) AND NEW.effective = false THEN
        UPDATE circuit
        SET nb_places_reservees = nb_places_reservees - 1
        WHERE
        circuit.id_circuit = NEW.id_circuit AND
    END IF
END