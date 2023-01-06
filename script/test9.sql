CALL calculTarifAvantageux('Paulette', 'Martin', 1, 1, @tarif1);
CALL calculTarifAvantageux('Paulette', 'Martin', 2, 2, @tarif2);
CALL calculTarifAvantageux('Paulette', 'Martin', 3, 3, @tarif3);
CALL calculTarifAvantageux('Paulette', 'Martin', 4, 4, @tarif4);

SELECT @tarif1, @tarif2, @tarif3, @tarif4;