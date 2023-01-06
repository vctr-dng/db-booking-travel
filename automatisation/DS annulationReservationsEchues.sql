INSERT INTO periode (`id_periode`,`date_depart`,`date_arrivee`) VALUES (1,'2023-01-10','2023-01-15');
INSERT INTO periode (`id_periode`,`date_depart`,`date_arrivee`) VALUES (2,'2023-04-20','2023-04-25');


INSERT INTO client (`id_client`,`nom`,`prenom`,`adresse`,`ville`,`tel`,`mail`) VALUES (1,'Dupond','Jean','Adresse 1','Ville 1','0','mail1');
INSERT INTO client (`id_client`,`nom`,`prenom`,`adresse`,`ville`,`tel`,`mail`) VALUES (2,'Pondu','Chris','Adresse 2','Ville 2','0','mail2');

INSERT INTO circuit (`id_circuit`,`id_periode`,`nb_places_totales`,`nb_places_reservees`,`tarif`,`descriptif`,`libelle`) VALUES (1,1,5,1,50.00,'Descriptif 1','Libellé 1');
INSERT INTO circuit (`id_circuit`,`id_periode`,`nb_places_totales`,`nb_places_reservees`,`tarif`,`descriptif`,`libelle`) VALUES (2,2,6,1,50.00,'Decriptif 2','Libellé 2');

INSERT INTO `agencevoyage`.`reservation` (`id_circuit`, `id_client`, `nb_places_demandees`, `acompte_verse`, `solde_verse`, `tarif_initial`, `date_initialisation`) VALUES ('1', '1', '1', '1', '0', '50', '2023-01-01');
INSERT INTO `agencevoyage`.`reservation` (`id_circuit`, `id_client`, `nb_places_demandees`, `acompte_verse`, `solde_verse`, `tarif_initial`, `date_initialisation`) VALUES ('2', '2', '1', '1', '0', '50', '2023-01-01');
