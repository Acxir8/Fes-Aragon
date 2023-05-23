-- Eliminar la base de datos si existe y crear una nueva
DROP DATABASE IF EXISTS FABRICA;
CREATE DATABASE FABRICA;
USE FABRICA;

-- Tablas
CREATE TABLE `Empresa` (
  `Id_Empresa` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(45) NOT NULL,
  `Razon_social` varchar(150) NOT NULL,
  `RFC` VARCHAR(12) UNIQUE NOT NULL,
  `Calle` varchar(200) NOT NULL,
  `NoCalle` varchar(5) NOT NULL,
  `Colonia` varchar(45) NOT NULL,
  `Codigo_Postal` int(5) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Id_Estados` int NOT NULL
);

CREATE TABLE `Proyecto` (
  `Id_Proyecto` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Fecha_Inicio` date NOT NULL,
  `Fecha_Finalizacion` date NOT NULL,
  `Fecha_EstimadaFinalizacion` date NOT NULL,
  `Costo_Ejecucion` int NOT NULL,
  `Precio_Final_Venta` int NOT NULL,
  `Id_empresa` int NOT NULL
);

CREATE TABLE `Pago_Periodico` (
  `Id_Pago_Periodico` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Monto` float NOT NULL,
  `Fecha_pago` datetime NOT NULL,
  `Id_Proyecto` int NOT NULL
);

CREATE TABLE `Lista_Proyecto` (
  `Id_Lista_Proyecto` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(300) NOT NULL,
  `Presupuesto_Estimado` int NOT NULL,
  `Id_Proyecto` int NOT NULL
);

CREATE TABLE `Rol` (
  `Id_Rol` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` varchar(45) NOT NULL
);

CREATE TABLE `Trabajador` (
  `Id_Trabajador` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `RFC` varchar(12) UNIQUE NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido_Paterno` varchar(45) NOT NULL,
  `Apellido_Materno` varchar(45) NOT NULL,
  `Domicilio` varchar(200) NOT NULL,
  `NoCalle` varchar(45) NOT NULL,
  `Colonia` varchar(45) NOT NULL,
  `Codigo_Postal` int(5) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Id_Rol` int NOT NULL,
  `Id_Proyecto` int NOT NULL,
  `Id_Estados` int NOT NULL
);

CREATE TABLE `Proyecto_Trabajador` (
  `Id_Proyecto_Trabajador` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Horas_Trabajadas` int NOT NULL,
  `Monto_Por_Hora` int NOT NULL,
  `Hora_Extras` int,
  `Id_Trabajador` int NOT NULL,
  `Id_Proyecto` int NOT NULL
);

CREATE TABLE `Estados` (
  `Id_Estados` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Estado` varchar(45) UNIQUE NOT NULL,
  `Abreviatura` varchar(45) NOT NULL
);

CREATE TABLE `Bitacora` (
  `Id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Fecha` datetime NOT NULL,
  `Usuario` varchar(50) NOT NULL,
  `Tabla` varchar(50) NOT NULL,
  `Sentencia` varchar(50) NOT NULL,
  `Accion` varchar(50) NOT NULL
);

-- Llaves foraneas
ALTER TABLE `Empresa` ADD FOREIGN KEY (`Id_Estados`) REFERENCES `Estados` (`Id_Estados`);

ALTER TABLE `Proyecto` ADD FOREIGN KEY (`Id_empresa`) REFERENCES `Empresa` (`Id_Empresa`);

ALTER TABLE `Pago_Periodico` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Lista_Proyecto` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Rol`) REFERENCES `Rol` (`Id_Rol`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Estados`) REFERENCES `Estados` (`Id_Estados`);

ALTER TABLE `Proyecto_Trabajador` ADD FOREIGN KEY (`Id_Trabajador`) REFERENCES `Trabajador` (`Id_Trabajador`);

ALTER TABLE `Proyecto_Trabajador` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

-- Triggers 
delimiter $$
drop trigger if exists bi_empresa $$
create trigger bi_empresa
before insert on Empresa
for each row
begin
	if new.RFC not rlike '^[A-Z]{3}[0-9]{6}[A-Z0-9]{3}?$' then
			signal sqlstate '45000' set message_text = 'El RFC no cumple con el formato válido.';
	else
		insert into bitacora values(
		null, sysdate(), user(), 'EMPRESA', 'INSERT',
		json_object("RFC", new.RFC)
		);
	End if;    
end $$
delimiter ;

delimiter $$
drop trigger if exists bi_trabajador $$
create trigger bi_trabajador
before insert on Trabajador
for each row
begin
	if new.RFC not rlike '^[A-Z]{3}[0-9]{6}[A-Z0-9]{3}?$' then
			signal sqlstate '45000' set message_text = 'El RFC no cumple con el formato válido.';
	else
		insert into bitacora values(
		null, sysdate(), user(), 'TRABAJADOR', 'INSERT',
		json_object("RFC", new.RFC)
		);
	End if;    
end $$
delimiter ;

INSERT INTO estados (id_estados, estado, abreviatura)
VALUES (1,'Aguascalientes','AGS'),(2,'Baja California','BC'),(3,'Baja California Sur','BCS'),(4,'Campeche','CAMP'),(5,'Coahuila','COAH'),(6,'Colima','COL'),(7,'Chiapas','CHIS'),(8,'Chihuahua','CHIH'),(9,'Ciudad de México','CDMX'),(10,'Durango','DGO'),(11,'Guanajuato','GTO'),(12,'Guerrero','GRO'),(13,'Hidalgo','HGO'),(14,'Jalisco','JAL'),(15,'Estado de México','MEX'),(16,'Michoacán','MICH'),(17,'Morelos','MOR'),(18,'Nayarit','NAY'),(19,'Nuevo León','NL'),(20,'Oaxaca','OAX'),(21,'Puebla','PUE'),(22,'Querétaro','QRO'),(23,'Quintana Roo','QR'),(24,'San Luis Potosí','SLP'),(25,'Sinaloa','SIN'),(26,'Sonora','SON'),(27,'Tabasco','TAB'),(28,'Tamaulipas','TAMP'),(29,'Tlaxcala','TLAX'),(30,'Veracruz','VER'),(31,'Yucatán','YUC'),(32,'Zacatecas','ZAC');


