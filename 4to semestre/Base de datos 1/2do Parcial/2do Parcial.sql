-- Mariaca Vazquez Enrique Base de datos 2
use colegio;
-- 1.-Crear una tabla pivote que liste el total de pagos por dia de la semana, en español, de los pagos del año 2018

-- 2.-Listar los alumnos que hayan echo un pago despues del dia 300 del año 2018
select distinct a.clave_alu, concat_ws(' ', a.nombre, ap_paterno, ap_materno) nombre
from alumnos a
natural join (
	select clave_alu, pago pagos, fecha_pago fpago,
	date_format(fecha_pago, '%j') dia
	from pagos 
    group by clave_alu, pago, fecha_pago
	having date_format(fecha_pago, '%j') >= 300) x
order by 2;

-- 3.- Listar todos los profesores que den clases en los salones de bachillerato
select distinct p.clave_prof, concat_ws(' ', nombres, apellido_p, apellido_m) nombre
from profesores p
join profesor_grupo pg on(p.clave_prof = pg.clave_prof)
join salones s on(pg.id_salon = s.id_salon)
join niveles n on(s.id_nivel = n.id_nivel)
where n.nombre like '%BACHILLERATO%';

-- 4.-Usando la funcion DATE_FORMAT listar las 10 primeras semanas del año con mayor numero de registros cambiados basado en el contenido del campo fedita de la tabla alumnos


-- 5.-Eliminar el campo CP de la tabla de alumnos
alter table alumnos 
drop column cp;

-- 6.-Listar los niveles que no tenga ningun salon registrado
select  distinct n.id_nivel, n.nombre
from salones s
right join niveles n on(s.id_nivel = n.id_nivel)
where s.id_nivel is null;

-- 7.- Listar a los maestros que no tengan ninguna materia registrada
select p.clave_prof, concat_ws(' ', nombres, apellido_p, apellido_m) nombre, m.clave_mat
from profesores p
join profesor_grupo pg on(p.clave_prof = pg.clave_prof)
right join materias m on(pg.clave_mat = m.clave_mat)
where pg.clave_mat is null;

-- 8.-La tabla alumno_salon tiene una llave primaria compuesta por los campos id_salon, id_curso , clave_alu, elimanar la PK y crear un nuevo campo llamado id NN AI y asignarlo como PK
alter table alumno_salon 
add column `id` INT NOT NULL AUTO_INCREMENT,
drop primary key,
add PRIMARY KEY (`id`); 

-- 9.- Lista las personas (alumnos y profesores) que hayan nacido en un año terminado en 5 (1975,1985,1995, etc), mostrar el nombre completo en un solo campo llamado nombre_completo


-- 10.-Actualizar los nombres de los alumnos que no vivan en queretaro en formato de letra capital
update alumnos set nombre = UPPER(alumnos.nombre)
where ciudad not like '%quer%' and ciudad  not like '%qro%' and ciudad not like '%QUERETARO%';

