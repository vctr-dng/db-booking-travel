CREATE PROCEDURE `annulationReservationsEchues`()
BEGIN

    UPDATE reservationechue
    SET reservationechue.effective = 0
    WHERE
    reservationechue.effective = TRUE AND
    reservationechue.solde_verse = FALSE;

    /*
    UPDATE circuit
    SET nb_places_reservees = nb_places_reservees - 1
    WHERE
    (SELECT reservation.solde_verse
    FROM reservation
    WHERE reservation.id_circuit = circuit.id_circuit) = 0
    AND
    (SELECT DATEDIFF(date_depart, NOW())
                    FROM periode
                    WHERE periode.id_periode = circuit.id_periode)
    <= 15;
    */

END