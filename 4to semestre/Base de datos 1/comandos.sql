use colegio;
select * from alumnos;
 
select * from alumnos
where sexo = 'f' and estatura > 0;

select * from alumnos
where sexo = 'f' or estatura > 0;

select * from alumnos
where (sexo = 'f' and estatura > 0) or ciudad <> 'QUERETARO';

select distinct nombre from alumnos 
where sexo = 'f' 
order by 1;

select * from alumnos 
where sexo = 'f' and
not (nombre = 'ALICIA' or nombre = 'WENDY' or nombre = 'ALEJANDRA' or nombre = 'ANA PAULA')
order by nombre;

select * from alumnos 
where sexo = 'f' 
-- Evalua elementos en una lista
and nombre in('ALICIA', 'WENDY', 'ALEJANDRA', 'ANA PAULA', 'PATITO23') 
order by nombre;

select * from alumnos 
where sexo = 'f' 
and nombre not in('ALICIA', 'WENDY', 'ALEJANDRA', 'ANA PAULA', 'PATITO23')
order by nombre;

select * from alumnos 
where estatura >= 1.60 and estatura <= 1.69
order by sexo, estatura desc;

select * from alumnos 
where (estatura >= 1.60 and estatura <= 1.69)
and sexo = 'm'
order by sexo, estatura desc;

select * from alumnos 
where estatura not between 1.60 and  1.69
and sexo = 'm'
order by sexo, estatura desc;

select distinct nombre from alumnos order by 1;

select distinct nombre from alumnos 
where nombre between 'OSO' and 'PATO' 
order by 1;

select distinct nombre from alumnos 
where nombre between 'O' and 'Q' 
order by 1;

select distinct nombre from alumnos 
where nombre between 'Od' and 'Q' 
order by 1;

select distinct fedita from alumnos order by 1 desc;

select distinct nombre, fedita from alumnos 
where not fedita between '2018-03-14 00:00:00' and '2018-03-14 23:59:59'
order by 1 desc;

select * from pagos order by 1;

select distinct clave_alu from pagos order by 1;

select * from alumnos 
where clave_alu in(select distinct clave_alu from pagos)
order by 1;

select * from alumnos 
where not clave_alu in(select distinct clave_alu from pagos)
order by 1;

select * from alumnos where nombre = 'ALEJANDRA';
-- Que contenga a alejandra
-- Operador like % _
select * from alumnos where nombre  like '%ALEJANDRA%'; -- Cambia nuestra consulta con los comodines

-- Comienzan con alejandra
select * from alumnos where nombre  like 'ALEJANDRA%';

-- Terminan con alejandra
select * from alumnos where nombre  like '%ALEJANDRA';

-- Que contengan un espacio o segundo nombre
select * from alumnos where nombre  like '% %ALEJANDRA';

select nombre from alumnos where nombre  like '%A%' order by 1;

-- _ Representa una posición
select nombre from alumnos where nombre  like '____' order by 1;

select nombre from alumnos where nombre  like '__a%a' order by 1;

select nombre from alumnos where nombre not like '__a%a' order by 1;

select nombre, curp from alumnos
where curp like '____93%'
order by 1;

select nombre, curp from alumnos
where curp like '____93____M%'
order by 1;

select distinct ciudad from alumnos;

select distinct ciudad from alumnos
where ciudad like '%quer%' or ciudad like '%qro%'
order by 1;

create temporary table alumnos_tmp as select * from alumnos;

desc alumnos_tmp;

create temporary table alumnos_tmp2 like alumnos;
insert into alumnos_tmp2 select * from alumnos;

desc alumnos_tmp2;

select distinct ciudad from alumnos_tmp
where ciudad like '%quer%' or ciudad like '%qro%'
order by 1;

update alumnos_tmp set ciudad = 'QUERETARO' -- Para modificar los datos mal capturados
where ciudad like '%quer%' or ciudad like '%qro%';

select nombre, email
from alumnos 
where email like '%@%.%';

select nombre, email
from alumnos 
where email not like '%@%.%';

-- Funciones de cadena
select nombre, length(nombre), right(nombre, 4), left (nombre, 4), mid(nombre, 4),
mid(nombre, 4, 4), substr(nombre, 4), substr(nombre, 4,4)
from alumnos
order by 1;

select nombre, locate('a',nombre), locate('a', nombre,7)
from alumnos
order by 1;

select nombre
from alumnos
where locate(' ', nombre) > 0
order by 1;


select nombre
from alumnos
where nombre like '% %'
order by 1;

select nombre, length(nombre) largo
from alumnos
order by 2 desc
limit 10;

select length(nombre) largo, count(*) nreg
from alumnos
group by length(nombre)
order by 2 desc;

select length(nombre) largo, count(*) nreg
from alumnos
group by length(nombre)
having count(*) >= 70
order by 2 desc;

select nombre
from alumnos
where length(nombre) = 7
order by 1 desc;
