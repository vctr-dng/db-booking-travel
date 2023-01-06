INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Gauthier', 'Lisa', 'Rue de la cité', 'Lannion', '0787061065', 'Lisa.gh@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Didier', 'Marguerite', 'Avenue de lelysée', 'Bayonne', '0686306840', 'Marguerite.Berinal@laposte.net');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2023-05-15','2023-06-18');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2023-01-15','2023-02-01');

INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '4', '4850', 'Circuit en Lettonie', 'Venez decouvrir la Letonnie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '5', '4562', 'Circuit en Turquie', 'Venez découvrir la Turquie');

INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '1', '1', '4', '2022-12-19', '4500');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '2', '2', '5', '2022-11-27', '4800');

/*Client1*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`) VALUES ('1', TRUE, TRUE,TRUE);
/*effective reste bon paiement effectué*/

/*Client 2*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`) VALUES ('2', TRUE, TRUE,FALSE);
/*effective devient faux car la solde n'a pas été versé 15 jours avant le départ, c'est à dire le 1er janvier 2023*/