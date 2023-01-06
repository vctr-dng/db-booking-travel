INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Paul', 'Martin', 'Rue de la cité', 'Pau', '07870610', 'Martin@gmail.com');
INSERT INTO `agencevoyage`.`client` (`nom`, `prenom`, `adresse`, `ville`, `tel`, `mail`) VALUES ('Didier', 'Berinal', 'Avenue de la motte', 'Dax', '0686306840', 'Berinal@laposte.net');

INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-12-30','2023-01-02');
INSERT INTO `agencevoyage`.`periode` (`date_depart`,`date_arrivee`) VALUES ('2022-11-27','2022-12-01');




INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('1', '0', '1', '2500', 'Circuit en Italie', 'Venez decouvrir l italie');
INSERT INTO `agencevoyage`.`circuit` (`id_periode`, `nb_places_totales`, `nb_places_reservees`, `tarif`, `descriptif`, `libelle`) VALUES ('2', '0', '1', '1750', 'Circuit en Espagne', 'Vene zdécouvrir l espagne');

/*lire tarif des devis */
/*Client 1*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '1', '1', '1', '2022-12-07');
/*Client 2*/
INSERT INTO `agencevoyage`.`devis` ( `id_circuit`, `id_client`, `nb_places_demandees`, `date_initialisation`) VALUES ( '2', '2', '1', '2022-11-15');


INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('1', 'True', 'True','True' '2800');
INSERT INTO `agencevoyage`.`reservation` (`id_devis`, `effective`, `acompte_verse`, `solde_verse`, `tarif_initial`, ) VALUES ('2', 'True', 'True','True' '1500');