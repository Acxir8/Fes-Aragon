-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: diagramaentidadrelacion
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actividad` (
  `id_actividad` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_cliente` int NOT NULL,
  `id_tipoActividad` int NOT NULL,
  PRIMARY KEY (`id_actividad`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_tipoActividad` (`id_tipoActividad`),
  CONSTRAINT `actividad_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `actividad_ibfk_2` FOREIGN KEY (`id_tipoActividad`) REFERENCES `tipo_actividad` (`id_tipoActividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asociaciones_juveniles`
--

DROP TABLE IF EXISTS `asociaciones_juveniles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociaciones_juveniles` (
  `id_AsociaJuveniles` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  PRIMARY KEY (`id_AsociaJuveniles`),
  UNIQUE KEY `telefono` (`telefono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociaciones_juveniles`
--

LOCK TABLES `asociaciones_juveniles` WRITE;
/*!40000 ALTER TABLE `asociaciones_juveniles` DISABLE KEYS */;
/*!40000 ALTER TABLE `asociaciones_juveniles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campamentos`
--

DROP TABLE IF EXISTS `campamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campamentos` (
  `id_campamentos` int NOT NULL AUTO_INCREMENT,
  `ubicacion` varchar(200) NOT NULL,
  `duracion` int NOT NULL,
  PRIMARY KEY (`id_campamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campamentos`
--

LOCK TABLES `campamentos` WRITE;
/*!40000 ALTER TABLE `campamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `campamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificacion`
--

DROP TABLE IF EXISTS `certificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificacion` (
  `id_certificacion` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `grado` varchar(50) NOT NULL,
  `organismo_de_emision` varchar(70) NOT NULL,
  PRIMARY KEY (`id_certificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificacion`
--

LOCK TABLES `certificacion` WRITE;
/*!40000 ALTER TABLE `certificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `certificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `edad` date NOT NULL,
  `id_colonia` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `id_colonia` (`id_colonia`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_colonia`) REFERENCES `colonias` (`id_colonia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colonias`
--

DROP TABLE IF EXISTS `colonias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colonias` (
  `id_colonia` int NOT NULL AUTO_INCREMENT,
  `codigoP` varchar(5) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `ubicacion` varchar(150) NOT NULL,
  `id_AsociaJuveniles` int NOT NULL,
  `id_liderDeGrupo` int NOT NULL,
  PRIMARY KEY (`id_colonia`),
  UNIQUE KEY `codigoP` (`codigoP`),
  UNIQUE KEY `ubicacion` (`ubicacion`),
  KEY `id_AsociaJuveniles` (`id_AsociaJuveniles`),
  KEY `id_liderDeGrupo` (`id_liderDeGrupo`),
  CONSTRAINT `colonias_ibfk_1` FOREIGN KEY (`id_AsociaJuveniles`) REFERENCES `asociaciones_juveniles` (`id_AsociaJuveniles`),
  CONSTRAINT `colonias_ibfk_2` FOREIGN KEY (`id_liderDeGrupo`) REFERENCES `lideres_de_grupo` (`id_liderDeGrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colonias`
--

LOCK TABLES `colonias` WRITE;
/*!40000 ALTER TABLE `colonias` DISABLE KEYS */;
/*!40000 ALTER TABLE `colonias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinacion`
--

DROP TABLE IF EXISTS `coordinacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coordinacion` (
  `id_coordinacion` int NOT NULL AUTO_INCREMENT,
  `id_liderDeGrupo` int NOT NULL,
  `id_actividad` int NOT NULL,
  PRIMARY KEY (`id_coordinacion`),
  KEY `id_liderDeGrupo` (`id_liderDeGrupo`),
  KEY `id_actividad` (`id_actividad`),
  CONSTRAINT `coordinacion_ibfk_1` FOREIGN KEY (`id_liderDeGrupo`) REFERENCES `lideres_de_grupo` (`id_liderDeGrupo`),
  CONSTRAINT `coordinacion_ibfk_2` FOREIGN KEY (`id_actividad`) REFERENCES `actividad` (`id_actividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinacion`
--

LOCK TABLES `coordinacion` WRITE;
/*!40000 ALTER TABLE `coordinacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordinacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deportes`
--

DROP TABLE IF EXISTS `deportes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deportes` (
  `id_deportes` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `accesorios_necesarios` varchar(100) NOT NULL,
  `horas_semanales` int NOT NULL,
  PRIMARY KEY (`id_deportes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deportes`
--

LOCK TABLES `deportes` WRITE;
/*!40000 ALTER TABLE `deportes` DISABLE KEYS */;
/*!40000 ALTER TABLE `deportes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `juegos`
--

DROP TABLE IF EXISTS `juegos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `juegos` (
  `id_juego` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  `descripcion_caracteristicas` varchar(100) NOT NULL,
  `participantes` int NOT NULL,
  PRIMARY KEY (`id_juego`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `juegos`
--

LOCK TABLES `juegos` WRITE;
/*!40000 ALTER TABLE `juegos` DISABLE KEYS */;
/*!40000 ALTER TABLE `juegos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lideres_de_grupo`
--

DROP TABLE IF EXISTS `lideres_de_grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lideres_de_grupo` (
  `id_liderDeGrupo` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `id_certificacion` int NOT NULL,
  PRIMARY KEY (`id_liderDeGrupo`),
  UNIQUE KEY `id_liderDeGrupo` (`id_liderDeGrupo`),
  KEY `id_certificacion` (`id_certificacion`),
  CONSTRAINT `lideres_de_grupo_ibfk_1` FOREIGN KEY (`id_certificacion`) REFERENCES `certificacion` (`id_certificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lideres_de_grupo`
--

LOCK TABLES `lideres_de_grupo` WRITE;
/*!40000 ALTER TABLE `lideres_de_grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `lideres_de_grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_actividad`
--

DROP TABLE IF EXISTS `tipo_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_actividad` (
  `id_tipoActividad` int NOT NULL AUTO_INCREMENT,
  `id_deportes` int NOT NULL,
  `id_juego` int NOT NULL,
  `id_campamentos` int NOT NULL,
  PRIMARY KEY (`id_tipoActividad`),
  KEY `id_deportes` (`id_deportes`),
  KEY `id_juego` (`id_juego`),
  KEY `id_campamentos` (`id_campamentos`),
  CONSTRAINT `tipo_actividad_ibfk_1` FOREIGN KEY (`id_deportes`) REFERENCES `deportes` (`id_deportes`),
  CONSTRAINT `tipo_actividad_ibfk_2` FOREIGN KEY (`id_juego`) REFERENCES `juegos` (`id_juego`),
  CONSTRAINT `tipo_actividad_ibfk_3` FOREIGN KEY (`id_campamentos`) REFERENCES `campamentos` (`id_campamentos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_actividad`
--

LOCK TABLES `tipo_actividad` WRITE;
/*!40000 ALTER TABLE `tipo_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_actividad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 12:04:10
