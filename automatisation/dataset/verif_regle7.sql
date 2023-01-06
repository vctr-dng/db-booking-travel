
/*Vérif  Un prospect ne peut avoir qu’une réservation par circuit */

/*Client 1 a 2 circuits identiques
  Client 2 a 1 circuit
   Client 3 a 2 circuits différents */

INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paul', 'Léa', 'Rue de la mootet', 'Guimguamp', '0787061078', 'Martin@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Julia', 'Berinal', 'Avenue du mont', 'Londres', '0686306840', 'julia.Berinal@laposte.net');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paula', 'Martin', 'route du juren', 'Trebeurden', '0686361057', 'Gege.paula@gouv.fr');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-12-30','2023-01-02');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-03-24','2022-03-30');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-11-22','2022-11-29');



INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '12', '0', '2500', 'Circuit en Mauritanie', 'Venez decouvrir la Mauritanie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '5', '0', '1750', 'Circuit en Grece', 'Venez découvrir la Grece');

/*Client 1*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-09-04');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-06-12');
/*Client 2 */
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '2', '1', '2022-05-05');
/*Client 3*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '3', '1', '2022-07-16');
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '3', '1', '2022-08-23');

/*Client1*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('1', 'True', 'True','True' '2400');
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('2', 'True', 'True','True' '1900');
/*Client2*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('3',  'True', 'True','True', '2000');
/*Client 3*/
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('4',  'True', 'True','True', '2350');
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`) VALUES ('5',  'True', 'True','True', '2200');