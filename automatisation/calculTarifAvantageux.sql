CREATE PROCEDURE `calculTarifAvantageux`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT tarifAvantageux DECIMAL(8,2))
BEGIN

    /*
    On récupère le tarif établi lors du devis et le tarif actuel
    On compare les 2 tarifs pour ne garder que le plus faible
    */
    DECLARE tarifDevis DECIMAL(8, 2);
	DECLARE tarifActuel DECIMAL(8, 2);

    CALL calculTarifDevis(NOM, PRENOM, IDcircuit, IDperiode, tarifActuel);
    CALL calculTarifActuel(IDperiode, IDcircuit, tarifActuel);

    SELECT LEAST(@tarifDevis, tarifActuel) INTO tarifAvantageux;
    
END