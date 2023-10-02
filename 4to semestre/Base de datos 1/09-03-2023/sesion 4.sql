/*
SELECT DISTINCT * Lista de campos
WHERE condiciones
GROUP BY
HAVING condiciones
ORDER BY
LIMIT
*/
show tables;

select user(), database(), sysdate();  -- Recuperar algo

-- Podemos usar la clausula as para generar etiquetas de los campos
select 5*7 as multiplicación, 800/4 as divide, 'hola' as saludo; 

select (8*7) - (5/4) operacion, sysdate() fecha, user();

show columns from empleado;

desc empleado;

-- Tienen un proyect y un select, proyecta 9 campos y recupera 99 registros
select * from empleado; 

select EMPNO, ENOMBRE, EPATERNO, SEXO, SUELDO, (sueldo/18) sueldo_usd, -- Se usan campos para realizar operaciones 
sueldo * sueldo sueldo_2											   -- Para generar un nuevo campo
from empleado;

select distinct sexo from empleado;
select distinct empno from empleado;
select distinct deptono from empleado;
select distinct deptono, sexo from empleado;
select distinct enombre from empleado;

select * from empleado where sexo = 'F';
select * from empleado where sexo = 'M';
select * from empleado where sexo = null;
select * from empleado where sexo is null;
select * from empleado where sexo is not null;

select * 
from empleado
where sexo = 'M' AND deptono = 2;

select * 
from empleado
where sexo = 'M' or deptono = 2;

select distinct enombre from empleado where sexo = 'F';

select sexo from empleado group by sexo; -- Lo que esté en la proyección, debe estár en el agrupamiento

select sexo, count(*) from empleado group by sexo;

select sexo, count(*) num_emp, sum(sueldo) sueldo_total, max(sueldo) sueldo_max, min(sueldo) sueldo_min,
avg(sueldo) sueldo_promedio 
from empleado group by sexo;

select deptono, count(*) num_emp, sum(sueldo) sueldo_total, max(sueldo) sueldo_max, min(sueldo) sueldo_min,
avg(sueldo) sueldo_promedio 
from empleado group by deptono;

select deptono, sexo, count(*) num_emp, sum(sueldo) sueldo_total, max(sueldo) sueldo_max, min(sueldo) sueldo_min,
avg(sueldo) sueldo_promedio 
from empleado group by deptono, sexo;

select deptono, count(*) num_emp, sum(sueldo) sueldo_total, max(sueldo) sueldo_max, min(sueldo) sueldo_min,
avg(sueldo) sueldo_promedio 
from empleado
where sexo = 'F'
group by deptono;

select deptono, count(*) num_emp, sum(sueldo) sueldo_total, max(sueldo) sueldo_max, min(sueldo) sueldo_min,
avg(sueldo) sueldo_promedio 
from empleado
where sexo = 'F'							
group by deptono                 -- El where es para campos, el having para funciones de agregación
having count(*) > 1;			 -- Como el Count, min, max, etc...

-- Encontramos nombres que se repiten 
select enombre, count(*) nemp from empleado group by enombre having count(*) > 1;

select * from empleado
order by epaterno, ematerno, enombre; 

select * from empleado
order by 6 desc, epaterno, enombre;


select enombre, count(*) nemp
from empleado
group by enombre
having count(*) > 1
order by 2 desc;

select * from empleado limit 5;
select * from empleado limit 5, 15;

select  enombre, count(*) nemp
from empleado 
where sexo = 'M'
group by enombre
having count(*) > 1
order by 2 desc, 1
limit 3;