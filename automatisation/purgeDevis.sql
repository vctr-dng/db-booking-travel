CREATE PROCEDURE `purgeDevis`()
BEGIN
    
	DELETE FROM devis
    WHERE
    devis.id_devis NOT IN
    (SELECT reservation.id_devis /* on ne garde que les devis qui n'ont pas mené à une réservation */
    FROM reservation) AND
    devis.date_initialisation < (NOW() - INTERVAL 6 MONTH) /* la periode de validité d'un devis est de 6 mois */
    ;
END