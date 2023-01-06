/*
Cette vue doit être créée après la vue "circuitEchue" car elle (cette vue) en dépend
*/

CREATE reservationEchue AS
SELECT reservation.*
FROM reservation, devis, circuitEchue
WHERE
circuitEchue.id_circuit = devis.id_circuit
devis.id_devis = reservation.id_devis;