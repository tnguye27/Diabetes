-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema diabetes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema diabetes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `diabetes` DEFAULT CHARACTER SET utf8 ;
USE `diabetes` ;

-- -----------------------------------------------------
-- Table `diabetes`.`target`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`target` (
  `target_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `target_diab` VARCHAR(20) NULL,
  PRIMARY KEY (`target_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`environmental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`environmental` (
  `environmental_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `environmental_factors` VARCHAR(10) NULL,
  `socioeconomic_factors` VARCHAR(10) NULL,
  PRIMARY KEY (`environmental_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`genetics`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`genetics` (
  `genetics_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `genetic_markers` VARCHAR(10) NULL,
  PRIMARY KEY (`genetics_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`physical_activity`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`physical_activity` (
  `physical_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `physical_activity` VARCHAR(10) NULL,
  `BMI` TINYINT NULL,
  PRIMARY KEY (`physical_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`glucose_tolerance_test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`glucose_tolerance_test` (
  `glucose_tol_test_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `glucose_tolerance_test` VARCHAR(10) NULL,
  PRIMARY KEY (`glucose_tol_test_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`gastro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`gastro` (
  `gastro_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `pancreatic_health` TINYINT NULL,
  `liver_function` VARCHAR(10) NULL,
  `digestive_enzyme_level` TINYINT NULL,
  PRIMARY KEY (`gastro_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`metabolic`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`metabolic` (
  `metabolic_id` SMALLINT NOT NULL,
  `blood_glucose_level` SMALLINT NULL,
  `insulin_level` TINYINT NULL,
  PRIMARY KEY (`metabolic_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`patient` (
  `patient_id` SMALLINT NOT NULL AUTO_INCREMENT,
  `age` INT NULL,
  `birth_weight` SMALLINT NULL,
  `genetics_id` SMALLINT NOT NULL,
  `environmental_id` SMALLINT NOT NULL,
  `physical_id` SMALLINT NOT NULL,
  `gastro_id` SMALLINT NOT NULL,
  `target_id` SMALLINT NOT NULL,
  `metabolic_id` SMALLINT NOT NULL,
  PRIMARY KEY (`patient_id`, `genetics_id`, `environmental_id`, `physical_id`, `gastro_id`, `target_id`, `metabolic_id`),
  INDEX `fk_patient_genetics1_idx` (`genetics_id` ASC) VISIBLE,
  INDEX `fk_patient_environmental1_idx` (`environmental_id` ASC) VISIBLE,
  INDEX `fk_patient_physical_activity1_idx` (`physical_id` ASC) VISIBLE,
  INDEX `fk_patient_gastro1_idx` (`gastro_id` ASC) VISIBLE,
  INDEX `fk_patient_target1_idx` (`target_id` ASC) VISIBLE,
  INDEX `fk_patient_metabolic1_idx` (`metabolic_id` ASC) VISIBLE,
  CONSTRAINT `fk_patient_genetics1`
    FOREIGN KEY (`genetics_id`)
    REFERENCES `diabetes`.`genetics` (`genetics_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_environmental1`
    FOREIGN KEY (`environmental_id`)
    REFERENCES `diabetes`.`environmental` (`environmental_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_physical_activity1`
    FOREIGN KEY (`physical_id`)
    REFERENCES `diabetes`.`physical_activity` (`physical_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_gastro1`
    FOREIGN KEY (`gastro_id`)
    REFERENCES `diabetes`.`gastro` (`gastro_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_target1`
    FOREIGN KEY (`target_id`)
    REFERENCES `diabetes`.`target` (`target_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_patient_metabolic1`
    FOREIGN KEY (`metabolic_id`)
    REFERENCES `diabetes`.`metabolic` (`metabolic_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `diabetes`.`patient_gluc_tol`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `diabetes`.`patient_gluc_tol` (
  `patient_gluc_tol_id` SMALLINT NOT NULL,
  `glucose_tol_test_id` SMALLINT NOT NULL,
  `patient_id` SMALLINT NOT NULL,
  PRIMARY KEY (`patient_gluc_tol_id`, `glucose_tol_test_id`, `patient_id`),
  INDEX `fk_metabolic_glucose_tolerance_test1_idx` (`glucose_tol_test_id` ASC) VISIBLE,
  INDEX `fk_metabolic_patient1_idx` (`patient_id` ASC) VISIBLE,
  CONSTRAINT `fk_metabolic_glucose_tolerance_test1`
    FOREIGN KEY (`glucose_tol_test_id`)
    REFERENCES `diabetes`.`glucose_tolerance_test` (`glucose_tol_test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_metabolic_patient1`
    FOREIGN KEY (`patient_id`)
    REFERENCES `diabetes`.`patient` (`patient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
