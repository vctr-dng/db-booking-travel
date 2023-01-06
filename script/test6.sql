SET @devisMartin=0;
SET @devisBerinal=0;

CALL rechercheDevis('Paul', 'Martin', 1, 1, @devisMartin);
CALL rechercheDevis('Mel', 'Berinal', 2, 2, @devisBerinal);

SELECT @devisMartin, @devisBerinal;