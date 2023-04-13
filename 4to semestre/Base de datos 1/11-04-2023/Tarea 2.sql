-- Promedio por estado y por curso
select estados.estado estado, a.id_estado,
sum(if( curso = '2015-2016',promedio, 0)) '2015-2016',
sum(if( curso = '2016-2017',promedio, 0)) '2016-2017',
sum(if( curso = '2017-2018',promedio, 0)) '2017-2018',
sum(if( curso = '2018-2019',promedio, 0)) '2018-2019',
sum(if(curso is null ,promedio, 0)) 'Sin curso',
if(a.id_estado = estados.id_estado, count(*), 0) nalu
from estados, alumnos a, (
select e.clave_alu, a.clave_alu matricula,
e.id_curso, es.estado, c.abreviatura curso, avg(calificacion) promedio
from evaluaciones e
right join alumnos a on(e.clave_alu = a.clave_alu)
join estados es on (es.id_estado = a.id_estado)
left join cursos c on (e.id_curso = c.id_curso)
group by e.clave_alu, a.clave_alu, e.id_curso, es.estado, c.abreviatura) x
where estados.id_estado = a.id_estado
group by estado, a.id_estado
order by 1;



