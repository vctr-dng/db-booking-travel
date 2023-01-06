CREATE VIEW circuitImminent AS
SELECT circuit.*
FROM circuit, periode
WHERE
periode.id_periode = circuit.id_periode AND
NOW() < periode.date_depart AND /* On ne garde que les circuits qui sont dans le futur */
NOW() BETWEEN /* On ne garde que les circuits dont le départ est prévu dans moins de 15 jours */
DATE_SUB(periode.date_depart, INTERVAL 15 DAY) AND
periode.date_depart;