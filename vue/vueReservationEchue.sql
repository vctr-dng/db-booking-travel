/*
Cette vue doit être créée après la vue "circuitimminent" car elle (cette vue) en dépend
*/

CREATE VIEW reservationechue AS
SELECT reservation.*
FROM reservation, devis, circuitimminent
WHERE
circuitimminent.id_circuit = devis.id_circuit AND
devis.id_devis = reservation.id_devis;