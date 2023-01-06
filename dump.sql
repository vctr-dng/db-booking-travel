-- MySQL Script generated by MySQL Workbench
-- ven. 06 janv. 2023 13:54:33
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema agencevoyage
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `agencevoyage` ;

-- -----------------------------------------------------
-- Schema agencevoyage
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `agencevoyage` DEFAULT CHARACTER SET utf8 ;
USE `agencevoyage` ;

-- -----------------------------------------------------
-- Table `agencevoyage`.`periode`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`periode` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`periode` (
  `id_periode` INT NOT NULL AUTO_INCREMENT,
  `date_depart` DATE NOT NULL,
  `date_arrivee` DATE NOT NULL,
  PRIMARY KEY (`id_periode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`circuit`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`circuit` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`circuit` (
  `id_circuit` INT NOT NULL AUTO_INCREMENT,
  `id_periode` INT NOT NULL,
  `nb_places_totales` INT NOT NULL,
  `nb_places_reservees` INT NOT NULL,
  `tarif` DECIMAL(8,2) NOT NULL,
  `descriptif` VARCHAR(45) NOT NULL,
  `libelle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_circuit`),
  INDEX `fk_circuit_période1_idx` (`id_periode` ASC) VISIBLE,
  CONSTRAINT `fk_circuit_période1`
    FOREIGN KEY (`id_periode`)
    REFERENCES `agencevoyage`.`periode` (`id_periode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`client`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`client` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`client` (
  `id_client` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `adresse` VARCHAR(45) NOT NULL,
  `ville` VARCHAR(45) NOT NULL,
  `tel` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_client`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`devis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`devis` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`devis` (
  `id_devis` INT NOT NULL AUTO_INCREMENT,
  `id_circuit` INT NOT NULL,
  `id_client` INT NOT NULL,
  `nb_places_demandees` INT NOT NULL,
  `date_initialisation` DATE NOT NULL,
  PRIMARY KEY (`id_devis`),
  INDEX `fk_devis_circuit1_idx` (`id_circuit` ASC) VISIBLE,
  INDEX `fk_devis_client1_idx` (`id_client` ASC) VISIBLE,
  CONSTRAINT `fk_devis_circuit1`
    FOREIGN KEY (`id_circuit`)
    REFERENCES `agencevoyage`.`circuit` (`id_circuit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_devis_client1`
    FOREIGN KEY (`id_client`)
    REFERENCES `agencevoyage`.`client` (`id_client`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`reservation` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`reservation` (
  `id_reservation` INT NOT NULL AUTO_INCREMENT,
  `id_devis` INT NOT NULL,
  `effective` TINYINT NOT NULL,
  `acompte_verse` TINYINT NOT NULL,
  `solde_verse` TINYINT NOT NULL,
  `tarif_initial` DECIMAL(8,2) NOT NULL,
  `date_initialisation` DATE NOT NULL,
  PRIMARY KEY (`id_reservation`),
  INDEX `fk_reservation_devis1_idx` (`id_devis` ASC) VISIBLE,
  CONSTRAINT `fk_reservation_devis1`
    FOREIGN KEY (`id_devis`)
    REFERENCES `agencevoyage`.`devis` (`id_devis`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`paiement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`paiement` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`paiement` (
  `id_paiement` INT NOT NULL AUTO_INCREMENT,
  `id_res` INT NOT NULL,
  `date_paiement` DATE NOT NULL,
  `somme` DECIMAL(8,2) NOT NULL,
  PRIMARY KEY (`id_paiement`),
  INDEX `fk_paiement_réservation1_idx` (`id_res` ASC) VISIBLE,
  CONSTRAINT `fk_paiement_réservation1`
    FOREIGN KEY (`id_res`)
    REFERENCES `agencevoyage`.`reservation` (`id_reservation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`ville`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`ville` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`ville` (
  `nom` VARCHAR(45) NOT NULL,
  `region` VARCHAR(45) NULL,
  `pays` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`nom`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`hotel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`hotel` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`hotel` (
  `id_hotel` INT NOT NULL AUTO_INCREMENT,
  `ville` VARCHAR(45) NOT NULL,
  `nom` VARCHAR(45) NOT NULL,
  `adresse` VARCHAR(45) NOT NULL,
  `tel` VARCHAR(45) NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_hotel`),
  INDEX `fk_hôtel_ville1_idx` (`ville` ASC) VISIBLE,
  CONSTRAINT `fk_hôtel_ville1`
    FOREIGN KEY (`ville`)
    REFERENCES `agencevoyage`.`ville` (`nom`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `agencevoyage`.`deplacement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `agencevoyage`.`deplacement` ;

CREATE TABLE IF NOT EXISTS `agencevoyage`.`deplacement` (
  `num_journee` INT NOT NULL,
  `id_circuit` INT NOT NULL,
  `ville_depart` VARCHAR(45) NOT NULL,
  `ville_arrivee` VARCHAR(45) NOT NULL,
  `id_hotel` INT NOT NULL,
  `heure_depart` TIME NOT NULL,
  `heure_arrivee` TIME NOT NULL,
  PRIMARY KEY (`num_journee`),
  INDEX `fk_déplacement_ville1_idx` (`ville_depart` ASC) VISIBLE,
  INDEX `fk_déplacement_hôtel1_idx` (`id_hotel` ASC) VISIBLE,
  INDEX `fk_déplacement_ville2_idx` (`ville_arrivee` ASC) VISIBLE,
  INDEX `fk_déplacement_circuit1_idx` (`id_circuit` ASC) VISIBLE,
  CONSTRAINT `fk_déplacement_ville1`
    FOREIGN KEY (`ville_depart`)
    REFERENCES `agencevoyage`.`ville` (`nom`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_déplacement_hôtel1`
    FOREIGN KEY (`id_hotel`)
    REFERENCES `agencevoyage`.`hotel` (`id_hotel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_déplacement_ville2`
    FOREIGN KEY (`ville_arrivee`)
    REFERENCES `agencevoyage`.`ville` (`nom`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_déplacement_circuit1`
    FOREIGN KEY (`id_circuit`)
    REFERENCES `agencevoyage`.`circuit` (`id_circuit`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
