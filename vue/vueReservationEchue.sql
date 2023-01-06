/*
Cette vue doit être créée après la vue "circuitImminent" car elle (cette vue) en dépend
*/

CREATE VIEW reservationEchue AS
SELECT reservation.*
FROM reservation, devis, circuitImminent
WHERE
circuitImminent.id_circuit = devis.id_circuit AND
devis.id_devis = reservation.id_devis;