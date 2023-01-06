CALL annulationReservationsEchues();

SELECT reservationechue.id_reservation, reservationechue.effective, circuitimminent.id_circuit, nb_places_reservees
FROM reservationechue, devis, circuitimminent
WHERE
devis.id_devis = reservationechue.id_devis AND
circuitimminent.id_circuit = devis.id_circuit;