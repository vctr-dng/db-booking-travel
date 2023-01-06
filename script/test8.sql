CALL calculTarifActuel(1, 1, @tarif1);
CALL calculTarifActuel(2, 2, @tarif2);

SELECT @tarif1, @tarif2;