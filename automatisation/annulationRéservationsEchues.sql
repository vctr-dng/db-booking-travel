CREATE DEFINER=`root`@`localhost` PROCEDURE `annulationRéservationsEchues`()
BEGIN
    UPDATE circuit
    SET nb_places_reservées = nb_places_reservées - 1
    WHERE
    (SELECT réservation.solde_versé
    FROM réservation
    WHERE réservation.id_circuit = circuit.id_circuit) = 0
    AND
    (SELECT DATEDIFF(NOW(), date_départ)
                    FROM période
                    WHERE période.id_période = circuit.id_période)
    <= 15;
END