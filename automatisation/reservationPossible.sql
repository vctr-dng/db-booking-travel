CREATE PROCEDURE 'reservationPossible'(IN IDcircuit INT, IN IDperiode INT, OUT test TINYINT)
BEGIN

    SELECT False INTO test;

    IF (SELECT COUNT(circuitImminent.id_circuit)
        FROM circuitImminent
        WHERE circuitImminent.id_circuit = IDcircuit
    ) = 0 AND
    (SELECT DATE_SUB(periode.date_depart, NOW())
    FROM circuit, periode
    WHERE periode.id_periode = IDperiode
    ) > 0
    THEN

    END IF;
    
END