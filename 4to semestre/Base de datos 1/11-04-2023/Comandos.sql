-- Antes
select a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
ifnull(sum(pago), 0) tpagos, count(pago) npagos, 
ifnull(max(fecha_pago), '000-00-00') ultima_fpago
from alumnos a 
natural left join pagos p
where p.clave_alu is null
group by a.clave_alu
order by 4, 2 desc;

-- Después
select a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alu, tpagos, npagos, ultima_fpago
from alumnos a 
natural left join (
	select clave_alu, ifnull(sum(pago), 0) tpagos, count(pago) npagos, ifnull(max(fecha_pago), '000-00-00') ultima_fpago 
	from pagos
	group by clave_alu) p
where tpagos is null
order by 2 desc;

-- Tabla pivote
select ciudad,
sum(if(sexo = '', nalu, 0)) 'ND',
sum(if(sexo = 'M', nalu, 0)) 'MASCULINO',
sum(if(sexo = 'F', nalu, 0)) 'FEMENINO',
sum(if(sexo = 'X', nalu, 0)) 'X'
from(
select ciudad, sexo, count(*) nalu
from alumnos
group by ciudad, sexo) x
group by ciudad
order by 1;


select sexo,
sum(if((ciudad like '%quer%' or ciudad like '%qro%'), nalu, 0)) 'queretaro',
sum(if(not(ciudad like '%quer%' or ciudad like '%qro%'), nalu, 0)) 'noqueretaro'
from(
select ciudad, sexo, count(*) nalu
from alumnos
group by ciudad, sexo) x
group by sexo
order by 1;


select distinct id_curso from evaluaciones;

select e.clave_alu,
concat_ws(' ', ap_paterno, ap_materno, nombre) alumno, id_curso, avg(calificacion) promedio
from evaluaciones e
right join alumnos a on(e.clave_alu = a.clave_alu)
group by e.clave_alu,concat_ws(' ', ap_paterno, ap_materno, nombre), id_curso
order by e.clave_alu;

select e.clave_alu,
concat_ws(' ', ap_paterno, ap_materno, a.nombre) alumno, e.id_curso, abreviatura curso, avg(calificacion) promedio
from evaluaciones e
right join alumnos a on(e.clave_alu = a.clave_alu)
left join cursos c on (e.id_curso = c.id_curso)
group by e.clave_alu,concat_ws(' ', ap_paterno, ap_materno, a.nombre), e.id_curso, abreviatura
order by 2;

-- Con pivote
select matricula, alumno, 
sum(if( curso = '2015-2016',promedio, 0)) '2015-2016',
sum(if( curso = '2016-2017',promedio, 0)) '2016-2017',
sum(if( curso = '2017-2018',promedio, 0)) '2017-2018',
sum(if( curso = '2018-2019',promedio, 0)) '2018-2019',
sum(if(curso is null ,promedio, 0)) 'Sin curso'
from(
select e.clave_alu, a.clave_alu matricula, 
concat_ws(' ', ap_paterno, ap_materno, a.nombre) alumno,
e.id_curso, abreviatura curso, avg(calificacion) promedio
from evaluaciones e
right join alumnos a on(e.clave_alu = a.clave_alu)
left join cursos c on (e.id_curso = c.id_curso)
group by e.clave_alu, a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, a.nombre), e.id_curso, abreviatura) x
group by matricula, alumno
order by 2;


-- Promedio por estado y por curso