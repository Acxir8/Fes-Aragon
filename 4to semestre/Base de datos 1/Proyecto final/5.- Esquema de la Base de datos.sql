-- Esquema de la Base de datos
-- Integrantes:
-- Cruces Hernández Noemi Guadalupe
-- Landeros Carpinteyro Ricardo
-- Mariaca Vazquez Enrique
-- Pedro Zarate Felipe de Jesus
-- Salvador Arrieta Jair Argel


-- Eliminar la base de datos si existe y crear una nueva
DROP DATABASE IF EXISTS FABRICA;
CREATE DATABASE FABRICA;
USE FABRICA;

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
  `nombre` varchar(150) NOT NULL,
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
  `Id_Trabajador` int NOT NULL
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

ALTER TABLE `Empresa` ADD FOREIGN KEY (`Id_Estados`) REFERENCES `Estados` (`Id_Estados`);

ALTER TABLE `Proyecto` ADD FOREIGN KEY (`Id_empresa`) REFERENCES `Empresa` (`Id_Empresa`);

ALTER TABLE `Pago_Periodico` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Lista_Proyecto` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Rol`) REFERENCES `Rol` (`Id_Rol`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Proyecto`) REFERENCES `Proyecto` (`Id_Proyecto`);

ALTER TABLE `Trabajador` ADD FOREIGN KEY (`Id_Estados`) REFERENCES `Estados` (`Id_Estados`);

ALTER TABLE `Proyecto_Trabajador` ADD FOREIGN KEY (`Id_Trabajador`) REFERENCES `Trabajador` (`Id_Trabajador`);

-- -------------------------------------------------------------------- --
-- Vista
create or replace view Info_proyecto as 
select Id_proyecto, p.nombre as NombreDelProyecto, p.Id_empresa, e.nombre as NombreDeLaEmpresa, e.Razon_social, e.RFC, e.Calle, e.NoCalle, e.Colonia, e.Codigo_postal, e.Ciudad, e.Telefono, Fecha_Finalizacion as FechaDeEntrega, Precio_Final_Venta as CostoTotal
from proyecto p
join Empresa e on (p.Id_empresa = e.Id_empresa)
order by 1;

-- -------------------------------------------------------------------- --
-- Triggers 

-- Guarda todos los insert en una bitacora 
-- Insert de la tabla empresa
delimiter $$
drop trigger if exists bi_empresa $$
create trigger bi_empresa
before insert on Empresa
for each row
begin
	if new.RFC not rlike '^[A-Z]{3}[0-9]{6}[A-Z0-9]{3}?$' and new.Codigo_Postal  not rlike '^[0-9]{5}$' and new.Telefono not rlike '^[0-9]{10}$'  then
			signal sqlstate '45000' set message_text = 'El RFC, el codigo postal o el telefono no cumplen con el formato válido.';
	else
		insert into bitacora values(
		null, sysdate(), user(), 'EMPRESA', 'INSERT',
		json_object("Id_Empresa", new.Id_empresa)
		);
	End if;    
end $$
delimiter ;

-- Insert de la tabla estados
delimiter $$
drop trigger if exists ai_estados $$
create trigger ai_estados
after insert on Estados
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'ESTADOS', 'INSERT',
	json_object("Id_Estados", new.Id_Estados)
	);
end $$
delimiter ;

-- Insert de la tabla proyecto
delimiter $$
drop trigger if exists ai_proyecto $$
create trigger ai_proyecto
after insert on Proyecto
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PROYECTO', 'INSERT',
	json_object("Id_Proyecto", new.Id_Proyecto)
	);
end $$
delimiter ;

-- Insert de la tabla Pago_periodico
delimiter $$
drop trigger if exists ai_pago_periodico $$
create trigger ai_pago_periodico
after insert on Pago_Periodico
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PAGO_PERIODICO', 'INSERT',
	json_object("Id_Pago_Periodico", new.Id_Pago_Periodico)
	);
end $$
delimiter ;

-- Insert de la tabla Lista_proyecto
delimiter $$
drop trigger if exists ai_lista_proyecto $$
create trigger ai_lista_proyecto
after insert on Lista_Proyecto
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'LISTA_PROYECTO', 'INSERT',
	json_object("Id_Lista_Proyecto", new.Id_Lista_Proyecto)
	);
end $$
delimiter ;

-- Insert de la tabla Trabajador
delimiter $$
drop trigger if exists bi_trabajador $$
create trigger bi_trabajador
before insert on Trabajador 
for each row
begin
	if new.RFC not rlike '^[A-Z]{3}[0-9]{6}[A-Z0-9]{3}?$' and new.Codigo_Postal  not rlike '^[0-9]{5}$' and new.Telefono not rlike '^[0-9]{10}$' and new.Email not rlike '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'  then
			signal sqlstate '45000' set message_text = 'El RFC, el codigo postal, telefono o el email no cumplen con el formato válido.';
	else
		insert into bitacora values(
		null, sysdate(), user(), 'TRABAJADOR', 'INSERT',
		json_object("Id_Trabajador", new.Id_Trabajador)
		);
	End if;    
end $$
delimiter ;

-- Insert de la tabla Rol
delimiter $$
drop trigger if exists ai_rol $$
create trigger ai_rol
after insert on Rol
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'ROL', 'INSERT',
	json_object("Id_Rol", new.Id_Rol)
	);
end $$
delimiter ;

-- Insert de la tabla Proyecto_Trabajador 
delimiter $$
drop trigger if exists ai_proyecto_trabajador $$
create trigger ai_proyecto_trabajador
after insert on Proyecto_Trabajador
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PROYECTO_TRABAJADOR', 'INSERT',
	json_object("Id_Proyecto_Trabajador", new.Id_Proyecto_Trabajador)
	);
end $$
delimiter ;

-- -------------------------------------------------------------------- --
-- Guarda todos los deletes en una bitacora
-- Delete de la tabla empresa
delimiter $$
drop trigger if exists ad_empresa $$
create trigger ad_empresa
after delete on Empresa
for each row
begin
		insert into bitacora values(
		null, sysdate(), user(), 'EMPRESA', 'DELETE',
		json_object("Id_Empresa", old.Id_empresa)
		);
end $$
delimiter ;

-- Delete de la tabla estados
delimiter $$
drop trigger if exists ad_estados $$
create trigger ad_estados
after delete on Estados
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'ESTADOS', 'DELETE',
	json_object("Id_Estados", old.Id_Estados)
	);
end $$
delimiter ;

-- Delete de la tabla proyecto
delimiter $$
drop trigger if exists ad_proyecto $$
create trigger ad_proyecto
after delete on Proyecto
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PROYECTO', 'DELETE',
	json_object("Id_Proyecto", old.Id_Proyecto)
	);
end $$
delimiter ;

-- Delete de la tabla Pago_periodico
delimiter $$
drop trigger if exists ad_pago_periodico $$
create trigger ad_pago_periodico
after delete on Pago_Periodico
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PAGO_PERIODICO', 'DELETE',
	json_object("Id_Pago_Periodico", old.Id_Pago_Periodico)
	);
end $$
delimiter ;

-- delete de la tabla Lista_proyecto
delimiter $$
drop trigger if exists ad_lista_proyecto $$
create trigger ad_lista_proyecto
after delete on Lista_Proyecto
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'LISTA_PROYECTO', 'DELETE',
	json_object("Id_Lista_Proyecto", old.Id_Lista_Proyecto)
	);
end $$
delimiter ;

-- delete de la tabla Trabajador
delimiter $$
drop trigger if exists ad_trabajador $$
create trigger ad_trabajador
after delete on Trabajador 
for each row
begin
		insert into bitacora values(
		null, sysdate(), user(), 'TRABAJADOR', 'DELETE',
		json_object("Id_Trabajador", old.Id_Trabajador)
		);  
end $$
delimiter ;

-- Delete de la tabla Rol
delimiter $$
drop trigger if exists ad_rol $$
create trigger ad_rol
after delete on Rol
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'ROL', 'DELETE',
	json_object("Id_Rol", old.Id_Rol)
	);
end $$
delimiter ;

-- Delete de la tabla Proyecto_Trabajador 
delimiter $$
drop trigger if exists ad_proyecto_trabajador $$
create trigger ad_proyecto_trabajador
after delete on Proyecto_Trabajador
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PROYECTO_TRABAJADOR', 'DELETE',
	json_object("Id_Proyecto_Trabajador", old.Id_Proyecto_Trabajador)
	);
end $$
delimiter ;

-- -------------------------------------------------------------------- --
-- Guarda todos los Updates en una bitacora
-- Update de la tabla empresa
delimiter $$
drop trigger if exists au_empresa $$
create trigger au_empresa
after update on Empresa
for each row
begin
		insert into bitacora values(
		null, sysdate(), user(), 'EMPRESA', 'UPDATE',
		json_object("Id_Empresa", old.Id_empresa, "Id_Empresa", new.Id_empresa)
		);
end $$
delimiter ;

-- Update de la tabla estados
delimiter $$
drop trigger if exists au_estados $$
create trigger au_estados
after update on Estados
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'ESTADOS', 'UDPATE',
	json_object("Id_Estados", old.Id_Estados, "Id_Estados", new.Id_Estados)
	);
end $$
delimiter ;

-- Update de la tabla proyecto
delimiter $$
drop trigger if exists au_proyecto $$
create trigger au_proyecto
after update on Proyecto
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PROYECTO', 'UPDATE',
	json_object("Id_Proyecto", old.Id_Proyecto, "Id_Proyecto", new.Id_Proyecto)
	);
end $$
delimiter ;

-- Update de la tabla Pago_periodico
delimiter $$
drop trigger if exists au_pago_periodico $$
create trigger au_pago_periodico
after update on Pago_Periodico
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PAGO_PERIODICO', 'UPDATE',
	json_object("Id_Pago_Periodico", old.Id_Pago_Periodico, "Id_Pago_Periodico", new.Id_Pago_Periodico)
	);
end $$
delimiter ;

-- Update de la tabla Lista_proyecto
delimiter $$
drop trigger if exists au_lista_proyecto $$
create trigger au_lista_proyecto
after update on Lista_Proyecto
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'LISTA_PROYECTO', 'UPDATE',
	json_object("Id_Lista_Proyecto", old.Id_Lista_Proyecto, "Id_Lista_Proyecto", new.Id_Lista_Proyecto)
	);
end $$
delimiter ;

-- update de la tabla Trabajador
delimiter $$
drop trigger if exists au_trabajador $$
create trigger au_trabajador
after update on Trabajador 
for each row
begin
		insert into bitacora values(
		null, sysdate(), user(), 'TRABAJADOR', 'UPDATE',
		json_object("Id_Trabajador", old.Id_Trabajador, "Id_Trabajador", new.Id_Trabajador)
		);  
end $$
delimiter ;

-- Update de la tabla Rol
delimiter $$
drop trigger if exists au_rol $$
create trigger au_rol
after update on Rol
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'ROL', 'UPDATE',
	json_object("Id_Rol", old.Id_Rol, "Id_Rol", new.Id_Rol)
	);
end $$
delimiter ;

-- Update de la tabla Proyecto_Trabajador 
delimiter $$
drop trigger if exists au_proyecto_trabajador $$
create trigger au_proyecto_trabajador
after update on Proyecto_Trabajador
for each row
begin
	insert into bitacora values(
	null, sysdate(), user(), 'PROYECTO_TRABAJADOR', 'UPDATE',
	json_object("Id_Proyecto_Trabajador", old.Id_Proyecto_Trabajador, "Id_Proyecto_Trabajador", new.Id_Proyecto_Trabajador)
	);
end $$
delimiter ;
