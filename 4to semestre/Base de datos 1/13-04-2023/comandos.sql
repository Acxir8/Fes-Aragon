use colegio;

-- Listar el alumno y el salon en el que está inscrito actualmente
-- alumno, salon (observaciones), alumno_salon (activo = 1)
-- A partir de las tablas alumnos, salones, alumno_salon y evaluaciones
select  concat_ws(' ', ap_paterno, ap_materno, a.nombre) alumno, s.observaciones, alus.activo activo
from alumnos a
right join alumno_salon alus on (alus.clave_alu = a.clave_alu)
left join salones s on (alus.id_salon = s.id_salon)
where activo = 1
group by concat_ws(' ', ap_paterno, ap_materno, a.nombre), s.observaciones, alus.activo
order by 1;

-- Listar 5 materias con mayor promedio por curso
-- materias, cursos, evaluaciones
select m.nombre materia, c.nombre curso, avg(calificacion) promedio
from evaluaciones e
right join materias m on (e.clave_mat = m.clave_mat)
right join cursos c on (e.id_curso = c.id_curso)
group by m.nombre, c.nombre
order by 3 desc
limit 5;


-- Listar el alumno y el promedio de calificaciones del curso 2018-2019
-- alumo, evaluaciones, cursos
select alumno, 
sum(if( curso = '2018-2019',promedio, 0)) '2018-2019'
from(
select e.clave_alu, a.clave_alu matricula, 
concat_ws(' ', ap_paterno, ap_materno, a.nombre) alumno,
e.id_curso, abreviatura curso, avg(calificacion) promedio
from evaluaciones e
right join alumnos a on(e.clave_alu = a.clave_alu)
left join cursos c on (e.id_curso = c.id_curso)
group by e.clave_alu, a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, a.nombre), e.id_curso, abreviatura) x
group by alumno
having sum(if( curso = '2018-2019',promedio, 0)) > 0
order by 1;


-- Listar el promedio de pagos por alumno por curso
--  alumno, curso, promedio de pagos
select concat_ws(' ', ap_paterno, ap_materno, a.nombre) alumno, c.nombre curso, avg(pago) pago
from alumnos a
join pagos p on (p.clave_alu = a.clave_alu)
join cursos c on (c.id_curso = p.id_curso)
group by concat_ws(' ', ap_paterno, ap_materno, a.nombre), c.nombre
order by 1;


-- Listar los profesores de los salnes de 2do grado (usar consulta anidada)
-- profesor, profesor_grupo, salon
select profesor, profesor_salon, salon






