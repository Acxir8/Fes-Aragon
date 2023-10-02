-- MySQL Workbench Synchronization
-- Generated: 2023-03-16 10:18
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Omar Mendoza Gonzalez

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `escritos` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `escritos`.`estado` (
  `idestado` INT(11) NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(150) NOT NULL,
  `codigoiso` VARCHAR(6) NOT NULL,
  PRIMARY KEY (`idestado`),
  UNIQUE INDEX `estado_UNIQUE` (`estado` ASC) VISIBLE,
  UNIQUE INDEX `codigoiso_UNIQUE` (`codigoiso` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `escritos`.`pais` (
  `idpais` INT(11) NOT NULL AUTO_INCREMENT,
  `pais` VARCHAR(150) NOT NULL,
  `codigoiso` VARCHAR(6) NOT NULL,
  PRIMARY KEY (`idpais`),
  UNIQUE INDEX `pais_UNIQUE` (`pais` ASC) VISIBLE,
  UNIQUE INDEX `codigoiso_UNIQUE` (`codigoiso` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `escritos`.`escritor` (
  `idescritor` INT(11) NOT NULL AUTO_INCREMENT,
  `rfc` VARCHAR(13) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `ap_paterno` VARCHAR(50) NOT NULL,
  `ap_materno` VARCHAR(50) NULL DEFAULT NULL,
  `fecha` DATE NULL DEFAULT NULL COMMENT 'Fecha de nacimiento',
  `nacionalidad` VARCHAR(30) NULL DEFAULT 'MEXICANA',
  `idpais` INT(11) NOT NULL,
  `idestado` INT(11) NOT NULL,
  PRIMARY KEY (`idescritor`),
  UNIQUE INDEX `rfc_UNIQUE` (`rfc` ASC) VISIBLE,
  UNIQUE INDEX `nombre_uk` (`nombre` ASC, `ap_paterno` ASC, `ap_materno` ASC) VISIBLE,
  INDEX `fk_escritor_pais_idx` (`idpais` ASC) VISIBLE,
  INDEX `fk_escritor_estado1_idx` (`idestado` ASC) VISIBLE,
  CONSTRAINT `fk_escritor_pais`
    FOREIGN KEY (`idpais`)
    REFERENCES `escritos`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_escritor_estado1`
    FOREIGN KEY (`idestado`)
    REFERENCES `escritos`.`estado` (`idestado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `escritos`.`libro` (
  `idlibro` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(150) NOT NULL,
  `anio` INT(11) NULL DEFAULT NULL,
  `isbn` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`idlibro`),
  UNIQUE INDEX `isbn_UNIQUE` (`isbn` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `escritos`.`escribe` (
  `idescribe` INT(11) NOT NULL AUTO_INCREMENT,
  `idescritor` INT(11) NOT NULL,
  `idlibro` INT(11) NULL DEFAULT NULL,
  `ideditorial` INT(11) NOT NULL,
  `anioedicion` INT(11) NULL DEFAULT NULL,
  INDEX `fk_escritor_has_libro_libro1_idx` (`idlibro` ASC) VISIBLE,
  PRIMARY KEY (`idescribe`),
  INDEX `fk_escritor_has_libro_escritor1_idx` (`idescritor` ASC) VISIBLE,
  INDEX `fk_escribe_editorial1_idx` (`ideditorial` ASC) VISIBLE,
  CONSTRAINT `fk_escritor_has_libro_escritor1`
    FOREIGN KEY (`idescritor`)
    REFERENCES `escritos`.`escritor` (`idescritor`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `fk_escritor_has_libro_libro1`
    FOREIGN KEY (`idlibro`)
    REFERENCES `escritos`.`libro` (`idlibro`)
    ON DELETE SET NULL
    ON UPDATE CASCADE,
  CONSTRAINT `fk_escribe_editorial1`
    FOREIGN KEY (`ideditorial`)
    REFERENCES `escritos`.`editorial` (`ideditorial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `escritos`.`editorial` (
  `ideditorial` INT(11) NOT NULL AUTO_INCREMENT,
  `editorial` VARCHAR(200) NOT NULL,
  `ciudad` VARCHAR(100) NOT NULL,
  `idpais` INT(11) NOT NULL,
  PRIMARY KEY (`ideditorial`),
  UNIQUE INDEX `editorial_UNIQUE` (`editorial` ASC) VISIBLE,
  INDEX `fk_editorial_pais1_idx` (`idpais` ASC) VISIBLE,
  CONSTRAINT `fk_editorial_pais1`
    FOREIGN KEY (`idpais`)
    REFERENCES `escritos`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `escritos`.`escritor_info` (
  `idescritor` INT(11) NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL DEFAULT NULL,
  `telefono` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idescritor`),
  UNIQUE INDEX `telefono_UNIQUE` (`telefono` ASC) VISIBLE,
  CONSTRAINT `fk_escritor_info_escritor1`
    FOREIGN KEY (`idescritor`)
    REFERENCES `escritos`.`escritor` (`idescritor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
