

INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paul', 'Martin', 'Rue de la pito', 'Saint', '0787061067', 'p.Martin@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Didier', 'Berinal', 'Avenue du Peral', 'Castelner', '0686306840', 'Berinal@laposte.net');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-10-02','2023-01-02');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-9-05','2022-12-01');


/*lire le tarif desréservation */
/*Client 1*/
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '0', '2500', 'Circuit en Macedoine', 'Venez decouvrir la Macedoine');
/*Client 2*/
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '0', '1750', 'Circuit au Portugal', 'Venez découvrir le Portugal');

/*Client1*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-05-12');
/*Client 2*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '2', '1', '2022-07-11');




INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('1', TRUE, TRUE,TRUE '1740');
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('2', TRUE, TRUE,TRUE '1987');