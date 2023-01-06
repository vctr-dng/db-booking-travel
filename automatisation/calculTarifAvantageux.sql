CREATE PROCEDURE `calculTarifAvantageux`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT tarifAvantageux DECIMAL(8,2))
BEGIN

    /*
    On récupère le tarif établi lors du devis et le tarif actuel
    On compare les 2 tarifs pour ne garder que le plus faible
    */
    DECLARE tarifDevis DECIMAL(8, 2);
	DECLARE tarifActuel DECIMAL(8, 2);

    CALL calculTarifDevis(NOM, PRENOM, IDcircuit, IDperiode, tarifDevis);
    CALL calculTarifActuel(IDperiode, IDcircuit, tarifActuel);
    
    CALL rechercheDevis(NOM, PRENOM, IDcircuit, IDperiode, @IDdevis);
    
    SELECT tarifActuel INTO tarifAvantageux; /* On prend par défaut le tarif actuel comme avantageux */
    
    IF DATEDIFF(NOW(), /* Première condition :  Le tarif associé au devis ne sont valables que 30 jours à partir de la création du devis */
    (SELECT devis.date_initialisation
    FROM devis
    WHERE
    devis.id_devis = @IDdevis AND
    devis.id_circuit = IDcircuit))
    <= 30
    AND tarifDevis < tarifActuel /* Seconde condition : le tarif du devis est plus petit que le tarif actuel*/
    THEN
		SELECT tarifDevis  INTO tarifAvantageux; /* Le tarif du devis est plus avantageux */
    END IF;
    
END