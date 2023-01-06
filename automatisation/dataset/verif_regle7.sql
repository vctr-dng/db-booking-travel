
/*Vérif  Un prospect ne peut avoir qu’une réservation par circuit */

/*Client 1 a 2 circuits identiques
  Client 2 a 1 circuit
   Client 3 a 2 circuits différents */

INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paul', 'Martin', 'Rue de la cité', 'Pau', '07870610', 'Martin@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Didier', 'Berinal', 'Avenue de la motte', 'Dax', '0686306840', 'Berinal@laposte.net');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Gerard', 'Martin', 'route du juren', 'Bayonne', '0686361057', 'Gege.mart@gouv.fr');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-12-30','2023-01-02');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-03-24','2022-03-30');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-11-22','2022-11-29');



INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '0', '2500', 'Circuit en Italie', 'Venez decouvrir l italie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '0', '1750', 'Circuit en Espagne', 'Vene zdécouvrir l espagne');

/*Client 1*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-12-24');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-01-24');
/*Client 2 */
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '2', '1', '2022-02-23');
/*Client 3*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '3', '1', '2022-02-23');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '3', '1', '2022-02-23');

/*Client1*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('1', 'True', 'True','True' '2500');
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('2', 'True', 'True','True' '1800');
/*Client2*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('3',  'True', 'True','True', '2000');
/*Client 3*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('4',  'True', 'True','True', '2150');
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('5',  'True', 'True','True', '2200');