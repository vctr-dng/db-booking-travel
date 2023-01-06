CREATE PROCEDURE `nombreReservationCircuit`(IN IDclient INT, IN IDcircuit INT, OUT nbrReservation INT)
BEGIN

    SELECT COUNT(reservation.id_reservation)
    FROM circuit, devis, reservation
    WHERE
    circuit.id_circuit = devis.id_circuit AND
    devis.id_devis = reservation.id_devis AND
    devis.id_client = IDclient AND
    circuit.id_circuit = IDcircuit
    INTO nbrReservation;
    
END