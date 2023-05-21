use colegio;

desc alumnos;
desc alumno_salon; 
desc cursos;
desc estados;
desc evaluaciones;
desc grados;
desc materias;
desc niveles;
desc pagos;
desc profesor_grupo;
desc profesores;
desc salones;


-- Muestra a los alumnos que están activos

select a.clave_alu, concat_ws(' ', a.nombre, ap_paterno, ap_materno) as nombre, alus.activo, c.nombre
from alumnos a
join alumno_salon alus on (a.clave_alu = alus.clave_alu)
join cursos c on (alus.id_curso = c.id_curso)
where alus.activo = 1;



select a.clave_alu, concat_ws(' ', a.nombre, ap_paterno, ap_materno) as nombre, alus.activo, c.nombre
from alumnos a
join alumno_salon alus on (a.clave_alu = alus.clave_alu)
join cursos c on (alus.id_curso = c.id_curso)
where alus.activo = 1;

select a.clave_alu, concat_ws(' ', a.nombre, ap_paterno, ap_materno) as nombre, x.activo
from
(select clave_alu, activo, id_curso 
from alumno_salon alus
where activo = 1) x
join alumnos a on (x.clave_alu = a.clave_alu);


select a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
ifnull(sum(pago), 0) tpagos, count(pago) npagos, 
ifnull(max(fecha_pago), '000-00-00') ultima_fpago
from alumnos a 
natural left join pagos p
where p.clave_alu is null
group by a.clave_alu
order by 4, 2 desc;





-- A partir de las tablas alumnos, salones, alumno_salon y evaluaciones
-- Listar 5 materias con mayor promedio por curso
-- materias, cursos, evaluaciones

desc alumnos; desc materias;  desc alumno_salon; desc evaluaciones;

select * from materias;

select m.nombre materias, c.nombre curso, avg(e.calificacion) promedio
from evaluaciones e
join materias m on (e.clave_mat = m.clave_mat)
join cursos c on (c.id_curso = e.id_curso)
group by m.nombre, c.nombre
order by 3 desc
limit 5;

select * from evaluaciones;























