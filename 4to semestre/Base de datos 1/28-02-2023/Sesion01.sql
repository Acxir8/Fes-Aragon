-- comentario
show databases; -- Comentario<<
/*
Hola mundo
*/

select user(), sysdate(); -- Enrique Mariaca Vazquez

show variables like '%dir%';

create database testbd; -- Creamos una nueva base de datos
drop database testbd; -- Borramos toda la base da datos

show tables; -- Muestra las tablas de bases de datos que está seleccionada en el momento

show tables from testbd; -- Muestra las tablas de la base de datos seleccionada
use testbd;
use sys; -- Selecciona una base de datos

select database(); -- Muestra que base de datos está seleccionada (Select recupera datos)

select database(), user(), connection_id(), version(),
sysdate();

select 9*7 + 1 as exp1, (9*7)+1 exp2, 'Hola mundo' saludo;
SELECT sysdate(), current_date(), current_time(), current_date;


set @nombre = 'Enrique';
SELECT sysdate(), current_date(), current_time(), current_date, @nombre, now();
set @iva = 0.16;
set @costo = 1000;

select @costo costo, @iva impuesto, @costo + (@costo * @iva) total;