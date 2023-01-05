CREATE PROCEDURE `purgeDevis`()
BEGIN
	SET SQL_SAFE_UPDATES=0;
    
	DELETE FROM réservation
    WHERE
    acompte_versé = false
    AND
    date_initialisation < (NOW() - INTERVAL 6 MONTH)
    ;
END