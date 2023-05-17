-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema colegio
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema fabrica
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `fabrica` ;

-- -----------------------------------------------------
-- Schema fabrica
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fabrica` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `fabrica` ;

-- -----------------------------------------------------
-- Table `fabrica`.`proyecto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`proyecto` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`proyecto` (
  `id_proyecto` INT NOT NULL AUTO_INCREMENT,
  `fecha_inicio` DATE NOT NULL,
  `fecha_finalizacion` DATE NOT NULL,
  `fecha_estimada` DATE NOT NULL,
  `costo_estimado` INT NOT NULL,
  `presupuesto_final` INT NOT NULL,
  PRIMARY KEY (`id_proyecto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`estados`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`estados` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`estados` (
  `id_estados` INT NOT NULL AUTO_INCREMENT,
  `estado` VARCHAR(45) NOT NULL,
  `abreviatura` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_estados`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`empresa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`empresa` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`empresa` (
  `id_empresa` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `razon_social` VARCHAR(150) NOT NULL,
  `rfc` VARCHAR(12) NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `no_calle` VARCHAR(45) NOT NULL,
  `colonia` VARCHAR(45) NOT NULL,
  `cp` INT NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `pais` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `codigo_interno` VARCHAR(45) NOT NULL,
  `id_proyecto` INT NULL DEFAULT NULL,
  `id_estados` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_empresa`),
  INDEX `id_proyecto` (`id_proyecto` ASC) VISIBLE,
  INDEX `id_estados` (`id_estados` ASC) VISIBLE,
  CONSTRAINT `empresa_ibfk_1`
    FOREIGN KEY (`id_proyecto`)
    REFERENCES `fabrica`.`proyecto` (`id_proyecto`),
  CONSTRAINT `empresa_ibfk_2`
    FOREIGN KEY (`id_estados`)
    REFERENCES `fabrica`.`estados` (`id_estados`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`rol`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`rol` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`rol` (
  `id_rol` INT NOT NULL AUTO_INCREMENT,
  `nombre_rol` VARCHAR(45) NOT NULL,
  `id_proyecto` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  INDEX `id_proyecto` (`id_proyecto` ASC) VISIBLE,
  CONSTRAINT `rol_ibfk_1`
    FOREIGN KEY (`id_proyecto`)
    REFERENCES `fabrica`.`proyecto` (`id_proyecto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`trabajador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`trabajador` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`trabajador` (
  `id_trabajador` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `ap_paterno` VARCHAR(45) NOT NULL,
  `ap_materno` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(200) NOT NULL,
  `no_calle` VARCHAR(45) NOT NULL,
  `colonia` VARCHAR(45) NOT NULL,
  `cp` VARCHAR(5) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `estado` VARCHAR(45) NOT NULL,
  `telefono` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `proyecto_id_proyecto` INT NOT NULL,
  `rol_id_rol` INT NOT NULL,
  `estados_id_estados` INT NOT NULL,
  PRIMARY KEY (`id_trabajador`),
  INDEX `fk_trabajador_proyecto1_idx` (`proyecto_id_proyecto` ASC) VISIBLE,
  INDEX `fk_trabajador_rol1_idx` (`rol_id_rol` ASC) VISIBLE,
  INDEX `fk_trabajador_estados1_idx` (`estados_id_estados` ASC) VISIBLE,
  CONSTRAINT `fk_trabajador_proyecto1`
    FOREIGN KEY (`proyecto_id_proyecto`)
    REFERENCES `fabrica`.`proyecto` (`id_proyecto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trabajador_rol1`
    FOREIGN KEY (`rol_id_rol`)
    REFERENCES `fabrica`.`rol` (`id_rol`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_trabajador_estados1`
    FOREIGN KEY (`estados_id_estados`)
    REFERENCES `fabrica`.`estados` (`id_estados`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`horas_trabajador`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`horas_trabajador` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`horas_trabajador` (
  `id_horas_trabajador` INT NOT NULL AUTO_INCREMENT,
  `hora_entrada` TIME NOT NULL,
  `hora_salida` TIME NOT NULL,
  `pago_por_hora` INT NOT NULL,
  `horas_extras` INT NULL DEFAULT NULL,
  `id_trabajador` INT NOT NULL,
  PRIMARY KEY (`id_horas_trabajador`),
  INDEX `id_trabajador` (`id_trabajador` ASC) VISIBLE,
  CONSTRAINT `horas_trabajador_ibfk_1`
    FOREIGN KEY (`id_trabajador`)
    REFERENCES `fabrica`.`trabajador` (`id_trabajador`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`lista_proyecto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`lista_proyecto` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`lista_proyecto` (
  `id_lista_proyecto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(300) NOT NULL,
  `id_proyecto` INT NOT NULL,
  PRIMARY KEY (`id_lista_proyecto`),
  INDEX `id_proyecto` (`id_proyecto` ASC) VISIBLE,
  CONSTRAINT `lista_proyecto_ibfk_1`
    FOREIGN KEY (`id_proyecto`)
    REFERENCES `fabrica`.`proyecto` (`id_proyecto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `fabrica`.`pago_periodico`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fabrica`.`pago_periodico` ;

CREATE TABLE IF NOT EXISTS `fabrica`.`pago_periodico` (
  `id_pago_periodico` INT NOT NULL AUTO_INCREMENT,
  `monto` INT NOT NULL,
  `fecha_pago` DATE NOT NULL,
  `id_empresa` INT NOT NULL,
  `id_proyecto` INT NOT NULL,
  PRIMARY KEY (`id_pago_periodico`),
  INDEX `id_empresa` (`id_empresa` ASC) VISIBLE,
  INDEX `id_proyecto` (`id_proyecto` ASC) VISIBLE,
  CONSTRAINT `pago_periodico_ibfk_1`
    FOREIGN KEY (`id_empresa`)
    REFERENCES `fabrica`.`empresa` (`id_empresa`),
  CONSTRAINT `pago_periodico_ibfk_2`
    FOREIGN KEY (`id_proyecto`)
    REFERENCES `fabrica`.`proyecto` (`id_proyecto`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
