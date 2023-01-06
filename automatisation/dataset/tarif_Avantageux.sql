INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paulette', 'Martin', 'Rue de la cité', 'Bordeaux', '0787061095', 'ette.Martin@gmail.com');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2023-08-01','2023-08-05');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2023-08-10','2023-08-13');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2023-08-15','2023-08-20');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2023-08-23','2023-08-25');

INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '0', '3750', 'Circuit en Georgie', 'Venez decouvrir la Georgie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '0', '1500', 'Circuit en Estonie', 'Venez découvrir l Estonie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('3', '3', '0', '3000', 'Circuit en Finlande', 'Venez decouvrir la Finlande');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('4', '25', '0', '500', 'Circuit en Inde', 'Venez découvrir l Inde');

INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '1', '1', '1', '2022-05-10', '2500');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '2', '1', '1', '2022-06-24', '4500');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '3', '1', '1', '2023-01-05', '1500');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '4', '1', '1', '2023-01-06', '1800');

/*
	Client 1 :
		Devis 1 : tarif DEVIS < tarif ACTUEL et le tarif du devis n'est	PLUS valable 	DONC le tarif le plus avantageux est celui 	ACTUEL
        Devis 2 : tarif DEVIS > tarif ACTUEL et le tarif du devis n'est	PLUS valable 	DONC le tarif le plus avantageux est celui 	ACTUEL
        Devis 3 : tarif DEVIS < tarif ACTUEL et le tarif du devis 		EST valable		DONC le tarif le plus avantageux est celui  DEVIS
        Devis 4 : tarif DEVIS > tarif ACTUEL et le tarif du devis 		EST valable 	DONC le tarif le plus avantageux est celui 	ACTUEL
*/