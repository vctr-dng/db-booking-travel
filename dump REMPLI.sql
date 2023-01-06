CREATE DATABASE  IF NOT EXISTS `agencevoyage` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agencevoyage`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: agencevoyage
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `circuit`
--

DROP TABLE IF EXISTS `circuit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `circuit` (
  `id_circuit` int NOT NULL AUTO_INCREMENT,
  `id_periode` int NOT NULL,
  `nb_places_totales` int NOT NULL,
  `nb_places_reservees` int NOT NULL,
  `tarif` decimal(8,2) NOT NULL,
  `descriptif` varchar(45) NOT NULL,
  `libelle` varchar(45) NOT NULL,
  PRIMARY KEY (`id_circuit`),
  KEY `fk_circuit_période1_idx` (`id_periode`),
  CONSTRAINT `fk_circuit_période1` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circuit`
--

LOCK TABLES `circuit` WRITE;
/*!40000 ALTER TABLE `circuit` DISABLE KEYS */;
INSERT INTO `circuit` VALUES (1,1,12,4,4850.00,'Circuit en Lettonie','Venez decouvrir la Letonnie'),(2,2,5,5,4562.00,'Circuit en Turquie','Venez découvrir la Turquie'),(3,1,12,0,2500.00,'Circuit en Arabie Saoudite','Venez decouvrir l Arabie Saoudite'),(4,2,5,0,1750.00,'Circuit au Pays de Galles','Venez découvrir le Pays de Galles'),(5,3,24,0,1475.00,'Circuit en Ecosse','Venez visiter l Ecosse'),(6,1,12,0,2500.00,'Circuit en Australie','Venez decouvrir l Australie'),(7,2,5,0,1470.00,'Circuit en Pologne','Vene zdécouvrir la Pologne'),(8,1,12,0,2500.00,'Circuit en Macedoine','Venez decouvrir la Macedoine'),(9,2,5,0,1750.00,'Circuit au Portugal','Venez découvrir le Portugal'),(10,1,12,0,3750.00,'Circuit en Georgie','Venez decouvrir la Georgie'),(11,2,5,0,1500.00,'Circuit en Estonie','Venez découvrir l Estonie'),(12,3,3,0,3000.00,'Circuit en Finlande','Venez decouvrir la Finlande'),(13,4,25,0,500.00,'Circuit en Inde','Venez découvrir l Inde'),(14,1,0,1,2640.00,'Circuit en Italie','Venez decouvrir l italie'),(15,2,0,1,1690.00,'Circuit en Espagne','Venez découvrir l espagne');
/*!40000 ALTER TABLE `circuit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `circuitimminent`
--

DROP TABLE IF EXISTS `circuitimminent`;
/*!50001 DROP VIEW IF EXISTS `circuitimminent`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `circuitimminent` AS SELECT 
 1 AS `id_circuit`,
 1 AS `id_periode`,
 1 AS `nb_places_totales`,
 1 AS `nb_places_reservees`,
 1 AS `tarif`,
 1 AS `descriptif`,
 1 AS `libelle`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `id_client` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'Gauthier','Lisa','Rue de la cité','Lannion','0787061065','Lisa.gh@gmail.com'),(2,'Didier','Marguerite','Avenue de lelysée','Bayonne','0686306840','Marguerite.Berinal@laposte.net'),(3,'Paul','Julie','Rue du centre','Tyrosse','0787061079','julie.Martin@gmail.com'),(4,'Didier','Catherine','Avenue de la motte','Auch','0686306840','cat.Berinal@laposte.net'),(5,'Lastes','Martin','rue du capitole','Bayonne','0686361057','Gege.mart@gouv.fr'),(6,'Landrau','Simon','Place du plaçot','Toulouse ','0787064587','Landrreau@gmail.com'),(7,'Paul','Martin','Rue de la sete','Meudon','0787061065','Martin@gmail.com'),(8,'Mel','Berinal','Avenue de la marlet','Dax','0686306840','Berinal@laposte.net'),(9,'Paul','Martin','Rue de la pito','Saint','0787061067','p.Martin@gmail.com'),(10,'Didier','Berinal','Avenue du Peral','Castelner','0686306840','Berinal@laposte.net'),(11,'Paulette','Martin','Rue de la cité','Bordeaux','0787061095','ette.Martin@gmail.com'),(12,'Jean','Marc','Rue du batiat','Bastia','0787061045','jean.marc@gmail.com'),(13,'Haydar','Selmi','Avenue de la corde','Marseille','0686306840','h.selm@laposte.net');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deplacement`
--

DROP TABLE IF EXISTS `deplacement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deplacement` (
  `num_journee` int NOT NULL,
  `id_circuit` int NOT NULL,
  `ville_depart` varchar(45) NOT NULL,
  `ville_arrivee` varchar(45) NOT NULL,
  `id_hotel` int NOT NULL,
  `heure_depart` time NOT NULL,
  `heure_arrivee` time NOT NULL,
  PRIMARY KEY (`num_journee`,`id_circuit`),
  KEY `fk_déplacement_ville1_idx` (`ville_depart`),
  KEY `fk_déplacement_hôtel1_idx` (`id_hotel`),
  KEY `fk_déplacement_ville2_idx` (`ville_arrivee`),
  KEY `fk_déplacement_circuit1_idx` (`id_circuit`),
  CONSTRAINT `fk_déplacement_circuit1` FOREIGN KEY (`id_circuit`) REFERENCES `circuit` (`id_circuit`),
  CONSTRAINT `fk_déplacement_hôtel1` FOREIGN KEY (`id_hotel`) REFERENCES `hotel` (`id_hotel`),
  CONSTRAINT `fk_déplacement_ville1` FOREIGN KEY (`ville_depart`) REFERENCES `ville` (`nom`),
  CONSTRAINT `fk_déplacement_ville2` FOREIGN KEY (`ville_arrivee`) REFERENCES `ville` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deplacement`
--

LOCK TABLES `deplacement` WRITE;
/*!40000 ALTER TABLE `deplacement` DISABLE KEYS */;
/*!40000 ALTER TABLE `deplacement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devis`
--

DROP TABLE IF EXISTS `devis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devis` (
  `id_devis` int NOT NULL AUTO_INCREMENT,
  `id_circuit` int NOT NULL,
  `id_client` int NOT NULL,
  `nb_places_demandees` int NOT NULL,
  `date_initialisation` date NOT NULL,
  `tarif_initial` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_devis`),
  KEY `fk_devis_circuit1_idx` (`id_circuit`),
  KEY `fk_devis_client1_idx` (`id_client`),
  CONSTRAINT `fk_devis_circuit1` FOREIGN KEY (`id_circuit`) REFERENCES `circuit` (`id_circuit`),
  CONSTRAINT `fk_devis_client1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devis`
--

LOCK TABLES `devis` WRITE;
/*!40000 ALTER TABLE `devis` DISABLE KEYS */;
INSERT INTO `devis` VALUES (1,1,1,4,'2022-12-19',4500.00),(2,2,2,5,'2022-11-27',4800.00),(3,1,1,1,'2022-12-28',2500.00),(4,2,2,1,'2022-01-26',1800.00),(5,3,3,2,'2022-02-27',2000.00),(6,1,1,1,'2022-12-28',2750.00),(7,2,2,1,'2022-11-29',1250.00),(8,1,1,1,'2022-05-12',1740.00),(9,2,2,1,'2022-07-11',1987.00),(10,1,1,1,'2022-05-10',2500.00),(11,2,1,1,'2022-06-24',4500.00),(12,3,1,1,'2023-01-05',1500.00),(13,4,1,1,'2023-01-06',1800.00),(14,1,1,1,'2022-12-07',2890.00),(15,2,2,1,'2022-11-15',1250.00);
/*!40000 ALTER TABLE `devis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hotel` (
  `id_hotel` int NOT NULL AUTO_INCREMENT,
  `ville` varchar(45) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `adresse` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  PRIMARY KEY (`id_hotel`),
  KEY `fk_hôtel_ville1_idx` (`ville`),
  CONSTRAINT `fk_hôtel_ville1` FOREIGN KEY (`ville`) REFERENCES `ville` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paiement` (
  `id_paiement` int NOT NULL AUTO_INCREMENT,
  `id_res` int NOT NULL,
  `date_paiement` date NOT NULL,
  `somme` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_paiement`),
  KEY `fk_paiement_réservation1_idx` (`id_res`),
  CONSTRAINT `fk_paiement_réservation1` FOREIGN KEY (`id_res`) REFERENCES `reservation` (`id_reservation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paiement`
--

LOCK TABLES `paiement` WRITE;
/*!40000 ALTER TABLE `paiement` DISABLE KEYS */;
/*!40000 ALTER TABLE `paiement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periode`
--

DROP TABLE IF EXISTS `periode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `periode` (
  `id_periode` int NOT NULL AUTO_INCREMENT,
  `date_depart` date NOT NULL,
  `date_arrivee` date NOT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periode`
--

LOCK TABLES `periode` WRITE;
/*!40000 ALTER TABLE `periode` DISABLE KEYS */;
INSERT INTO `periode` VALUES (1,'2023-05-15','2023-06-18'),(2,'2023-01-15','2023-02-01'),(3,'2022-12-29','2023-01-03'),(4,'2022-03-25','2022-03-29'),(5,'2022-11-21','2022-11-28'),(6,'2022-12-30','2023-01-02'),(7,'2022-11-27','2022-12-01'),(8,'2022-10-02','2023-01-02'),(9,'2022-09-05','2022-12-01'),(10,'2023-08-01','2023-08-05'),(11,'2023-08-10','2023-08-13'),(12,'2023-08-15','2023-08-20'),(13,'2023-08-23','2023-08-25'),(14,'2022-12-30','2023-01-02'),(15,'2022-11-27','2022-12-01');
/*!40000 ALTER TABLE `periode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id_reservation` int NOT NULL AUTO_INCREMENT,
  `id_devis` int NOT NULL,
  `effective` tinyint NOT NULL,
  `acompte_verse` tinyint NOT NULL,
  `solde_verse` tinyint NOT NULL,
  PRIMARY KEY (`id_reservation`),
  KEY `fk_reservation_devis1_idx` (`id_devis`),
  CONSTRAINT `fk_reservation_devis1` FOREIGN KEY (`id_devis`) REFERENCES `devis` (`id_devis`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (1,1,1,1,1),(2,2,1,1,0),(3,1,1,1,1),(4,2,1,1,0),(5,1,1,1,1),(6,1,1,1,1),(7,1,1,1,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ajoutReservation` BEFORE INSERT ON `reservation` FOR EACH ROW BEGIN

    DECLARE nbrReservation INT;

    DECLARE IDclient INT;

    DECLARE IDcircuit INT;



    SELECT devis.id_client, devis.id_circuit

    FROM devis

    WHERE devis.id_devis = NEW.id_devis

    INTO IDclient, IDcircuit;



    CALL nombreReservationCircuit(IDclient, IDcircuit, nbrReservation);



    IF (nbrReservation >= 1) THEN

        SIGNAL SQLSTATE '45000'

        SET MESSAGE_TEXT = 'Règle 7 non respectée';

    END IF;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `reservationechue`
--

DROP TABLE IF EXISTS `reservationechue`;
/*!50001 DROP VIEW IF EXISTS `reservationechue`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reservationechue` AS SELECT 
 1 AS `id_reservation`,
 1 AS `id_devis`,
 1 AS `effective`,
 1 AS `acompte_verse`,
 1 AS `solde_verse`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ville`
--

DROP TABLE IF EXISTS `ville`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ville` (
  `nom` varchar(45) NOT NULL,
  `region` varchar(45) DEFAULT NULL,
  `pays` varchar(45) NOT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ville`
--

LOCK TABLES `ville` WRITE;
/*!40000 ALTER TABLE `ville` DISABLE KEYS */;
/*!40000 ALTER TABLE `ville` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'agencevoyage'
--

--
-- Dumping routines for database 'agencevoyage'
--
/*!50003 DROP PROCEDURE IF EXISTS `annulationReservationsEchues` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `annulationReservationsEchues`()
BEGIN



    UPDATE reservationechue

    SET reservationechue.effective = 0

    WHERE

    reservationechue.effective = TRUE AND

    reservationechue.solde_verse = FALSE;



    /*

    UPDATE circuit

    SET nb_places_reservees = nb_places_reservees - 1

    WHERE

    (SELECT reservation.solde_verse

    FROM reservation

    WHERE reservation.id_circuit = circuit.id_circuit) = 0

    AND

    (SELECT DATEDIFF(date_depart, NOW())

                    FROM periode

                    WHERE periode.id_periode = circuit.id_periode)

    <= 15;

    */



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculTarifActuel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculTarifActuel`(IN IDperiode INT, IN IDcircuit INT, OUT tarifActuel DECIMAL(8,2))
BEGIN



    /*

    On récupère le circuit à partir de sa clé primaire

    On récupère le tarif actuel du circuit par son attribut associé

    */



	SELECT circuit.tarif

    FROM circuit

    WHERE

    id_circuit = IDcircuit AND

    id_periode = IDperiode



    INTO tarifActuel;

    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculTarifAvantageux` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculTarifAvantageux`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT tarifAvantageux DECIMAL(8,2))
BEGIN



    /*

    On récupère le tarif établi lors du devis et le tarif actuel

    On compare les 2 tarifs pour ne garder que le plus faible

    */

    DECLARE tarifDevis DECIMAL(8, 2);

	DECLARE tarifActuel DECIMAL(8, 2);



    CALL calculTarifDevis(NOM, PRENOM, IDcircuit, IDperiode, tarifDevis);

    CALL calculTarifActuel(IDperiode, IDcircuit, tarifActuel);

    

    CALL rechercheDevis(NOM, PRENOM, IDcircuit, IDperiode, @IDdevis);

    

    SELECT tarifActuel INTO tarifAvantageux; /* On prend par défaut le tarif actuel comme avantageux */

    

    IF DATEDIFF(NOW(), /* Première condition :  Le tarif associé au devis ne sont valables que 30 jours à partir de la création du devis */

    (SELECT devis.date_initialisation

    FROM devis

    WHERE

    devis.id_devis = @IDdevis AND

    devis.id_circuit = IDcircuit))

    <= 30

    AND tarifDevis < tarifActuel /* Seconde condition : le tarif du devis est plus petit que le tarif actuel*/

    THEN

		SELECT tarifDevis  INTO tarifAvantageux; /* Le tarif du devis est plus avantageux */

    END IF;

    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculTarifDevis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculTarifDevis`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT tarifDevis DECIMAL(8,2))
BEGIN



    /*

    On récupère le devis (la clé primaire la référencant) à partir des informations données

    */



    DECLARE IDdevis INT;



    CALL rechercheDevis(NOM, PRENOM, IDcircuit, IDperiode, IDdevis);



    /*

    On récupère le tarif proposé lors du devis par son attribut associé

    */

	SELECT devis.tarif_initial

    FROM devis

    WHERE

    devis.id_devis = IDdevis

    INTO tarifDevis;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `nombreReservationCircuit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `nombreReservationCircuit`(IN IDclient INT, IN IDcircuit INT, OUT nbrReservation INT)
BEGIN



    SELECT COUNT(reservation.id_reservation)

    FROM circuit, devis, reservation

    WHERE

    circuit.id_circuit = devis.id_circuit AND

    devis.id_devis = reservation.id_devis AND

    devis.id_client = IDclient AND

    circuit.id_circuit = IDcircuit

    INTO nbrReservation;

    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `purgeDevis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `purgeDevis`()
BEGIN

    

	DELETE FROM devis

    WHERE

    devis.id_devis NOT IN

    (SELECT reservation.id_devis /* on ne garde que les devis qui n'ont pas mené à une réservation */

    FROM reservation) AND

    devis.date_initialisation < (NOW() - INTERVAL 6 MONTH) /* la periode de validité d'un devis est de 6 mois */

    ;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rechercheDevis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rechercheDevis`(IN NOM VARCHAR(45), IN PRENOM VARCHAR(45), IN IDcircuit INT, IN IDperiode INT, OUT IDdevis INT)
BEGIN

    SELECT devis.id_devis

    FROM devis, client, circuit

    WHERE

    client.id_client = devis.id_client AND

    client.nom = NOM AND

    client.prenom = PRENOM AND

    circuit.id_circuit = devis.id_circuit AND

    circuit.id_circuit = IDcircuit AND

    circuit.id_periode = IDperiode



    INTO IDdevis;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reservationPossible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reservationPossible`(IN IDcircuit INT, IN IDperiode INT, OUT test TINYINT)
BEGIN



    SELECT FALSE INTO test; /* Présomption d'impossibilité de réserver */



    IF (SELECT COUNT(circuitimminent.id_circuit) /* Vérification si le circuit n'est pas dans la vue des circuit dont le départ est imminent (- de 15 jours et dans le futur) */

        FROM circuitimminent

        WHERE circuitimminent.id_circuit = IDcircuit

    ) = 0 AND

    (SELECT TIMEDIFF(periode.date_depart, NOW()) /* Vérification si le la période indiquée a une date de départ postérieur à aujourd'hui */ 

    FROM periode

    WHERE periode.id_periode = IDperiode

    ) > 0

    THEN

        SELECT TRUE INTO test;

    END IF;

    

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `circuitimminent`
--

/*!50001 DROP VIEW IF EXISTS `circuitimminent`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `circuitimminent` AS select `circuit`.`id_circuit` AS `id_circuit`,`circuit`.`id_periode` AS `id_periode`,`circuit`.`nb_places_totales` AS `nb_places_totales`,`circuit`.`nb_places_reservees` AS `nb_places_reservees`,`circuit`.`tarif` AS `tarif`,`circuit`.`descriptif` AS `descriptif`,`circuit`.`libelle` AS `libelle` from (`circuit` join `periode`) where ((`periode`.`id_periode` = `circuit`.`id_periode`) and (now() < `periode`.`date_depart`) and (now() between (`periode`.`date_depart` - interval 15 day) and `periode`.`date_depart`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `reservationechue`
--

/*!50001 DROP VIEW IF EXISTS `reservationechue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reservationechue` AS select `reservation`.`id_reservation` AS `id_reservation`,`reservation`.`id_devis` AS `id_devis`,`reservation`.`effective` AS `effective`,`reservation`.`acompte_verse` AS `acompte_verse`,`reservation`.`solde_verse` AS `solde_verse` from ((`reservation` join `devis`) join `circuitimminent`) where ((`circuitimminent`.`id_circuit` = `devis`.`id_circuit`) and (`devis`.`id_devis` = `reservation`.`id_devis`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 22:59:43
