use testbd;
select database();

show databases;
show tables;
show tables from information_schema;
show variables;

drop table escritor;

CREATE TABLE escritor(
 id_escritor int not null auto_increment primary key,
 nombre varchar(50) not null,
 paterno varchar(50) not null,
 materno varchar(50) null,
 nacionalidad varchar(30) null default 'MEXICANA',
 alias varchar(30)
);

describe escritor;
show columns from escritor;
show index from escritor;

create table libro(
 id_libro int not null auto_increment,
 id_escritor int null, -- fk 
 titulo varchar(50) not null, 
 contenido text null,
 primary key(id_libro),   -- primary key(id_libro, id_escritor)  -- Llave compuesta 
 foreign key(id_escritor) references escritor(id_escritor) on
  delete cascade on update set null
);
desc libro;
show index from libro;

ALTER TABLE libro add unique uk_titulo (titulo);
alter table libro modify id_libro int not null;
ALTER TABLE libro drop primary key;

alter table libro modify id_libro int not null
auto_increment,
add primary key(id_libro);

alter table libro add column abstract varchar(300);
alter table libro add categoria int null after titulo;

alter table libro drop categoria, 
change abstract resumen varchar(300);

CREATE TABLE if not exists autor(
 id_escritor int not null auto_increment primary key,
 nombre varchar(50) not null,
 paterno varchar(50) not null,
 materno varchar(50) null,
 nacionalidad varchar(30) null default 'MEXICANA',
 alias varchar(30)
);

drop table autor;

CREATE temporary TABLE if not exists autor_tmp(
 id_escritor int not null auto_increment primary key,
 nombre varchar(50) not null,
 paterno varchar(50) not null,
 materno varchar(50) null,
 nacionalidad varchar(30) null default 'MEXICANA',
 alias varchar(30)
);

select * from autor_tmp;  -- Nota: Al cerrar la sesión se cierra las tablas temporales.


use testbd;
show tables;

create database testbd2;

create table testbd2.escritor like testbd.escritor;  -- Like copia la estructura de otra tabla
show tables from testbd2;

show create table escritor;


CREATE TABLE `escritor` (
  `id_escritor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `paterno` varchar(50) NOT NULL,
  `materno` varchar(50) DEFAULT NULL,
  `nacionalidad` varchar(30) DEFAULT 'MEXICANA',
  `alias` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_escritor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


rename table testbd2.escritor to testbd2.escribano;

rename table testbd2.escribano to testbd.escribano;

drop table autor, escribano;  -- Puedo borrar las 1 o más tablas separandolos por comas.

show tables;


select * from information_schema.tables
where table_schema = 'testbd';

-- TAREA: EJERCICIO DE DDL
-- EXAMEN: PONER ENUNCIADO Y REGRESAR CONSULTA -- ALTER --
-- PRACTICAR PARA EL EXAMEN
-- COMENTARIO: ORDENADO, SCRITP EN LA CLASE (LO VA A CORRER)
-- SUBIR SQL 
-- EXAMEN 1 || 16-MARZO-2023

desc escritor;

SELECT * from escritor;

INSERT INTO escritor (nombre, paterno) values ('GABRIEL', 'GARCIA');

INSERT INTO escritor (id_escritor,nombre, paterno,materno, nacionalidad, alias) values (null, 'GABRIEL', 'GARCIA', 'MARQUEZ','COLOMBIANA','GABO');
-- Llave duplicada
INSERT INTO escritor (id_escritor, nombre, paterno) values (3,'GABRIEL', 'GARCIA');
-- Default
INSERT INTO escritor (paterno, nombre, nacionalidad) values ('MELCHOR', 'FERNANDA',null);

-- Multiples insercioness
INSERT INTO escritor (paterno, nombre, nacionalidad) values 
('SELENA', 'GARRO','MEXICANA'),
('AMPARO', 'DAVILA','MEXICANA'),
('CARLOS', 'FUENTES','MEXICANA'),
('ISAAC', 'ASIMOV','EUA');

insert into escritor
set nombre = 'ROSARIO', paterno = 'CASTELLANOS',
nacionalidad = 'MEXICANA';

-- Una forma de copiar datos de una tabla a otra temporal
create temporary table escritor_tmp like escritor;

select * from escritor_tmp;

insert into escritor_tmp 
select * from escritor;

-- Otra forma de copiar los datos a una tabla temporal 
create temporary table escritor_tmp2 as
select id_escritor, nombre, paterno, nacionalidad from escritor;

desc escritor_tmp2;

select * from escritor;

-- Cambiar datos de la tabla
-- update
UPDATE escritor set nacionalidad = 'MX'
WHERE alias = 'GABO';

show variables like '%safe%';

set sql_safe_updates = 0;

select * from escritor;

update escritor set nacionalidad = 'MEXICANA'
where alias is null;

update escritor set nacionalidad = 'COLOMBIANA', materno = null
where alias = 'GABO';

update escritor set nacionalidad = 'COLOMBIANA', materno = ' '
where alias = 'GABO';

delete from escritor where id_escritor > 9 or id_escritor = 16;

select * from escritor;

INSERT INTO escritor (id_escritor,nombre, paterno,materno, nacionalidad, alias) values (100, 'GABRIEL', 'GARCIA', 'MARQUEZ','COLOMBIANA','GABO');

INSERT INTO escritor (id_escritor,nombre, paterno,materno, nacionalidad, alias) values (null, 'GABRIEL', 'GARCIA', 'MARQUEZ','COLOMBIANA','GABO');

delete from escritor;
INSERT INTO escritor (id_escritor,nombre, paterno,materno, nacionalidad, alias) values (null, 'GABRIEL', 'GARCIA', 'MARQUEZ','COLOMBIANA','GABO');

truncate table escritor_tmp;
insert into escritor_tmp values (null, 'GABRIEL', 'GARCIA', 'MARQUEZ','COLOMBIANA','GABO');

select * from escritor;
select * from escritor_tmp;

-- Integridad referencial
select * from libro;
select * from escritor;
desc libro;

insert into libro values (null, 1000, 'libro x',
null, null);

insert into libro values (null, 102, '100 años de soledad',
null, null);

insert into libro values (null, 102, 'El amor en tiempos de colera',
null, null),
(null, 102, 'El coronel no tiene quien le escriba', null, null),
(null, 108, 'Yo robot', null, null),
(null, 108, 'Fundación', null, null);

update escritor set id_escritor = id_escritor + 100
where id_escritor > 103;

delete from escritor where id_escritor in(102, 208);

select * from libro;
select * from escritor;

