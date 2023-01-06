INSERT INTO agencevoyage.periode(id_periode,date_depart,date_arrivee) VALUES (1,"2022-03-25","2022-12-28");
INSERT INTO agencevoyage.periode(id_periode,date_depart,date_arrivee) VALUES(5,"2022-12-26","2022-12-30");

INSERT INTO agencevoyage.client (id_client, nom, prenom, adresse, ville, tel, mail) VALUES (5, 'Durand', 'Paul', '5 rue de la Rhine', 'Paris', '0123126789', 'paul.durand@gmail.com');
INSERT INTO agencevoyage.client (id_client, nom, prenom, adresse, ville, tel, mail) VALUES (17, 'Martin', 'Antoine', '17 rue de la Loire', 'Lyon', '0987654321', 'antoine.martinn@gmail.com');

INSERT INTO agencevoyage.circuit (id_circuit, id_periode,nb_places_totales,nb_places_reservees,tarif, descriptif, libelle) VALUES (1,1,12,10,2500, 'Decouvrez les merveilles de l Italie ','Circuit en Italie');
INSERT INTO agencevoyage.circuit (id_circuit, id_periode,nb_places_totales,nb_places_reservees,tarif, descriptif, libelle) VALUES (2,5,15,7,3600 ,'Partez à la decouverte de l Espagne','Circuit en Espagne');

INSERT INTO agencevoyage.reservation (id_res,id_circuit,id_client,nb_places_demandees,acompte_verse,solde_verse,tarif_initial,date_initialisation) VALUES (1,1,5,1,False,False,2500,"2022-03-24");
INSERT INTO agencevoyage.reservation (id_res,id_circuit,id_client,nb_places_demandees,acompte_verse,solde_verse,tarif_initial,date_initialisation) VALUES (2,2,17,1,False,False,3500,"2022-12-24"); 