INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paul', 'Julie', 'Rue du centre', 'Tyrosse', '0787061079', 'julie.Martin@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Didier', 'Catherine', 'Avenue de la motte', 'Auch', '0686306840', 'cat.Berinal@laposte.net');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Lastes', 'Martin', 'rue du capitole', 'Bayonne', '0686361057', 'Gege.mart@gouv.fr');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Landrau', 'Simon', 'Place du plaçot', 'Toulouse ', '0787064587', 'Landrreau@gmail.com');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-12-29','2023-01-03');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-03-25','2022-03-29');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-11-21','2022-11-28');

INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '0', '2500', 'Circuit en Arabie Saoudite', 'Venez decouvrir l Arabie Saoudite');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '0', '1750', 'Circuit au Pays de Galles', 'Venez découvrir le Pays de Galles');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('3', '24', '0', '1475', 'Circuit en Ecosse', 'Venez visiter l Ecosse');

INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '1', '1', '1', '2022-12-28', '2500');/*reste moins de 6 mois*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '2', '2', '1', '2022-01-26', '1800');/*conservé car a donné lieu à une réservation*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`, `tarif_initial`) VALUES ( '3', '3', '2', '2022-02-27', '2000');/*supprimé trop vieux*/

INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`) VALUES ('1', TRUE, TRUE, TRUE);
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`) VALUES ('2', TRUE, TRUE, FALSE);