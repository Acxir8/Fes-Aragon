use colegio;

select * from salones;
select * from niveles;
select * from grados;
select * from cursos;

select * from salones s, niveles n
where s.id_nivel = n.id_nivel;

select * from salones s, niveles n
where s.id_nivel = n.id_nivel;

-- Join con operador 
select * 
from salones s join niveles n
on(s.id_nivel = n.id_nivel);

select * 
from salones s join niveles n
using(id_nivel);

select * 
from salones s natural join niveles n;


-- Left join 
select * from salones s left join niveles n
on(s.id_nivel = n.id_nivel)
order by n.id_nivel;

select * from salones s left join niveles n
on(s.id_nivel = n.id_nivel)
where n.id_nivel is null
order by n.id_nivel;


select * from salones s left join niveles n
using(id_nivel)
order by n.id_nivel;

select *
from salones s natural left join niveles n
order by n.id_nivel;


-- Right join 
select * from salones s right join niveles n
on(s.id_nivel = n.id_nivel)
order by n.id_nivel desc;

select * from salones s right join niveles n
using(id_nivel)
order by n.id_nivel desc;

select * from salones s natural right join niveles n
order by n.id_nivel desc;

select * from salones s right join niveles n
on(s.id_nivel = n.id_nivel)
where s.id_nivel is null
order by n.id_nivel desc;

select n.*
from salones s right join niveles n
on(s.id_nivel = n.id_nivel)
where s.id_nivel is null
order by n.id_nivel desc;

-- Join con multiples tablas

select s.id_salon, observaciones salon, tipo_grupo, n.nombre nivel, g.nombre grado, c.abreviatura curso 
from salones s 
left join niveles n on(s.id_nivel = n.id_nivel)
join grados g on(s.id_grado = g.id_grado)
join cursos c on(s.id_curso = c.id_curso)
where n.nombre = 'SECUNDARIA'
order by g.nombre desc;

-- Unión (La suma de los renglones en el orden de puesta, mismo número de campos en todas las estructuras)
select id_nivel clave, nombre item, 'nivel' tipo from niveles
union 
select id_grado, nombre, 'grado'  from grados
union
select id_curso, nombre, 'curso' from cursos
order by 2;

select id_nivel clave, nombre item, 'nivel' tipo from niveles
union 
select id_grado, nombre, 'grado'  from grados
union
select id_curso, nombre, 'curso' from cursos;

select * from 
(select id_nivel clave, nombre item, 'nivel' tipo from niveles
union 
select id_grado, nombre, 'grado'  from grados
union
select id_curso, nombre, 'curso' from cursos
order by 2
) u
where u.clave <= 5;

select id_nivel clave, nombre item, 'nivel' tipo from niveles
union all
select id_nivel clave, nombre item, 'nivel' tipo from niveles
union all
select id_nivel clave, nombre item, 'nivel' tipo from niveles;

-- Full outer join 

select *
from salones s left join niveles n
on(s.id_nivel = n.id_nivel)
union 
select *
from salones s right join niveles n
on(s.id_nivel = n.id_nivel);


select *
from salones s left join niveles n
on(s.id_nivel = n.id_nivel)
where n.id_nivel is null
union 
select *
from salones s right join niveles n
on(s.id_nivel = n.id_nivel)
where s.id_nivel is null;

select clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
sum(pago) tpagos, count(*) npagos, max(fecha_pago)
from alumnos a 
natural left join pagos p
group by a.clave_alu
order by 4;

select * from pagos where clave_alu = '11040044';

select a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
sum(pago) tpagos, count(pago) npagos, max(fecha_pago)
from alumnos a 
natural left join pagos p
where p.clave_alu is null
group by a.clave_alu
order by 4, 2 desc;

select a.clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
ifnull(sum(pago), 0) tpagos, count(pago) npagos, 
ifnull(max(fecha_pago), '000-00-00') ultima_fpago
from alumnos a 
natural left join pagos p
where p.clave_alu is null
group by a.clave_alu
order by 4, 2 desc;


