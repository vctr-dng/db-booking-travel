CALL calculTarifDevis('Jean', 'Marc', 1, 1, @tarif1);
CALL calculTarifDevis('Haydar', 'Selmi', 2, 2, @tarif2);

SELECT @tarif1, @tarif2;