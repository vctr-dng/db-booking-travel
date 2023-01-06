CREATE VIEW circuitEchue AS
SELECT circuit.*
FROM circuit, periode
WHERE
circuit.id_periode = periode.id_periode AND
NOW() < circuit.date_depart AND
NOW() BETWEEN
DATE_SUB(circuit.date_depart, INTERVAL 15 DAYS) AND
circuit.date_depart;