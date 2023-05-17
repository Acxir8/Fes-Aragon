-- MySQL Workbench Synchronization
-- Generated: 2023-05-13 02:22
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: EnriqueMV

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER TABLE `fabrica`.`rol` 
DROP FOREIGN KEY `rol_ibfk_2`;

ALTER TABLE `fabrica`.`horas_trabajador` 
CHANGE COLUMN `monto_por_hora` `pago_por_hora` INT(11) NOT NULL ;

ALTER TABLE `fabrica`.`rol` 
DROP COLUMN `id_trabajador`,
DROP INDEX `id_trabajador` ;
;

ALTER TABLE `fabrica`.`trabajador` 
ADD COLUMN `proyecto_id_proyecto` INT(11) NOT NULL AFTER `email`,
ADD COLUMN `rol_id_rol` INT(11) NOT NULL AFTER `proyecto_id_proyecto`,
ADD COLUMN `estados_id_estados` INT(11) NOT NULL AFTER `rol_id_rol`,
ADD INDEX `fk_trabajador_proyecto1_idx` (`proyecto_id_proyecto` ASC) VISIBLE,
ADD INDEX `fk_trabajador_rol1_idx` (`rol_id_rol` ASC) VISIBLE,
ADD INDEX `fk_trabajador_estados1_idx` (`estados_id_estados` ASC) VISIBLE;
;

DROP TABLE IF EXISTS `fabrica`.`proyecto_trabajador` ;

ALTER TABLE `fabrica`.`trabajador` 
ADD CONSTRAINT `fk_trabajador_proyecto1`
  FOREIGN KEY (`proyecto_id_proyecto`)
  REFERENCES `fabrica`.`proyecto` (`id_proyecto`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_trabajador_rol1`
  FOREIGN KEY (`rol_id_rol`)
  REFERENCES `fabrica`.`rol` (`id_rol`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_trabajador_estados1`
  FOREIGN KEY (`estados_id_estados`)
  REFERENCES `fabrica`.`estados` (`id_estados`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
