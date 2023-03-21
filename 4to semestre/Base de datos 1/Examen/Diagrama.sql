create database DiagramaEntidadRelacion;
use DiagramaEntidadRelacion;

CREATE TABLE `asociaciones_Juveniles` (
  `id_AsociaJuveniles` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int UNIQUE NOT NULL
);

CREATE TABLE `colonias` (
  `id_colonia` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `codigoP` varchar(5) UNIQUE NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ubicacion` varchar(150) UNIQUE NOT NULL,
  `id_AsociaJuveniles` int NOT NULL,
  `id_liderDeGrupo` int NOT NULL
);

CREATE TABLE `lideres_de_grupo` (
  `id_liderDeGrupo` int UNIQUE PRIMARY KEY NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `id_certificacion` int NOT NULL
);

CREATE TABLE `certificacion` (
  `id_certificacion` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `grado` varchar(50) NOT NULL,
  `organismo_de_emision` varchar(70) NOT NULL
);

CREATE TABLE `actividad` (
  `id_actividad` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_cliente` int NOT NULL,
  `id_tipoActividad` int NOT NULL
);

CREATE TABLE `coordinacion` (
  `id_coordinacion` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_liderDeGrupo` int NOT NULL,
  `id_actividad` int NOT NULL
);

CREATE TABLE `tipo_actividad` (
  `id_tipoActividad` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `id_deportes` int NOT NULL,
  `id_juego` int NOT NULL,
  `id_campamentos` int NOT NULL
);

CREATE TABLE `campamentos` (
  `id_campamentos` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(200) NOT NULL,
  `duracion` int NOT NULL
);

CREATE TABLE `deportes` (
  `id_deportes` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `accesorios_necesarios` varchar(100) NOT NULL,
  `horas_semanales` int NOT NULL
);

CREATE TABLE `juegos` (
  `id_juego` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `descripcion_caracteristicas` varchar(100) NOT NULL,
  `participantes` int NOT NULL
);

CREATE TABLE `cliente` (
  `id_cliente` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `edad` date NOT NULL,
  `id_colonia` int NOT NULL
);

ALTER TABLE `colonias` ADD FOREIGN KEY (`id_AsociaJuveniles`) REFERENCES `asociaciones_Juveniles` (`id_AsociaJuveniles`);

ALTER TABLE `colonias` ADD FOREIGN KEY (`id_liderDeGrupo`) REFERENCES `lideres_de_grupo` (`id_liderDeGrupo`);

ALTER TABLE `lideres_de_grupo` ADD FOREIGN KEY (`id_certificacion`) REFERENCES `certificacion` (`id_certificacion`);

ALTER TABLE `actividad` ADD FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);

ALTER TABLE `actividad` ADD FOREIGN KEY (`id_tipoActividad`) REFERENCES `tipo_actividad` (`id_tipoActividad`);

ALTER TABLE `coordinacion` ADD FOREIGN KEY (`id_liderDeGrupo`) REFERENCES `lideres_de_grupo` (`id_liderDeGrupo`);

ALTER TABLE `coordinacion` ADD FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id_actividad`);

ALTER TABLE `tipo_actividad` ADD FOREIGN KEY (`id_deportes`) REFERENCES `deportes` (`id_deportes`);

ALTER TABLE `tipo_actividad` ADD FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id_juego`);

ALTER TABLE `tipo_actividad` ADD FOREIGN KEY (`id_campamentos`) REFERENCES `campamentos` (`id_campamentos`);

ALTER TABLE `cliente` ADD FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id_colonia`);
