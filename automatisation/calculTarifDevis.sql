CREATE PROCEDURE `calculTarifDevis`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT tarifDevis DECIMAL(8,2))
BEGIN

    /*
    On récupère le devis (la clé primaire la référencant) à partir des informations données
    */

    DECLARE IDdevis INT;

    CALL calculTarifDevis(NOM, PRENOM, IDcircuit, IDperiode, IDdevis);

    /*
    On récupère le tarif proposé lors du devis par son attribut associé
    */
	SELECT devis.tarif_initial
    FROM devis
    WHERE
    devis.id_devis = IDdevis
    INTO tarifDevis;

END