CREATE PROCEDURE `reservationPossible`(IN IDcircuit INT, IN IDperiode INT, OUT test TINYINT)
BEGIN

    SELECT FALSE INTO test; /* Présomption d'impossibilité de réserver */

    IF (SELECT COUNT(circuitImminent.id_circuit) /* Vérification si le circuit n'est pas dans la vue des circuit dont le départ est imminent (- de 15 jours et dans le futur) */
        FROM circuitImminent
        WHERE circuitImminent.id_circuit = IDcircuit
    ) = 0 AND
    (SELECT TIMEDIFF(periode.date_depart, NOW()) /* Vérification si le la période indiquée a une date de départ postérieur à aujourd'hui */ 
    FROM periode
    WHERE periode.id_periode = IDperiode
    ) > 0
    THEN
        SELECT TRUE INTO test;
    END IF;
    
END