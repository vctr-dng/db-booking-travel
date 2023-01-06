

INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paulette', 'Martin', 'Rue de la cité', 'Bordeaux', '0787061095', 'ette.Martin@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Didier', 'Berinal', 'Avenue de la gambar', 'Montélimard', '0686306840', 'Berinal@laposte.net');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-12-30','2023-01-02');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-11-27','2022-12-01');



INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '0', '2500', 'Circuit en Georgie', 'Venez decouvrir la Georgie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '0', '1650', 'Circuit en Estonie', 'Venez découvrir l Estonie');

/*Client 1*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-12-24');
/*Client2*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '2', '1', '2022-11-24');


/*Client1*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('1', 'True', 'True','True' '2570');
/*Client2*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('2', 'True', 'True','True' '1505');

/*comparer les tarifs de réservation et de circuit */

/*tarif plus avantageux sur le circuit pour le client 1
  tarif plus avantageux sur le devis pour le client 2*/