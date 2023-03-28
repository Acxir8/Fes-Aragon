-- Producto cartesiano = join
-- Selección
-- Proyección
-- Producto cartesiano + la igualdad de la llave fonaranea y primaria
-- Unión
-- Intersección
-- Dar diferencia

use colegio;

select * from alumnos;
select count(*) from alumnos;

select * from estados;
select count(*) from estados;

select count(*) from estados
where id_estado = 22;

-- Producto cartesiano
select *
from alumnos, estados
order by clave_alu;

select count(*)
from alumnos, estados
order by clave_alu;


-- Join
select *
from alumnos a, estados e
where a.id_estado = e.id_estado
order by clave_alu;

select * from pagos order by 1;

select * 
from alumnos a, pagos p
where a.clave_alu = p.clave_alu
order by 1;


-- Join
select count(*)
from alumnos a, pagos p, estados e, cursos c
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
and p.id_curso = c.id_curso;

select *
from alumnos a, pagos p, estados e, cursos c
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
and p.id_curso = c.id_curso;

select a.clave_alu, a.nombre, ap_paterno, ap_materno, estado, c.nombre curso, count(*) npagos, sum(pago) tpagos
from alumnos a, pagos p, estados e, cursos c
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
and p.id_curso = c.id_curso
group by a.clave_alu, a.nombre, ap_paterno, ap_materno, estado, c.nombre
order by 3, 4, 2;

select estado, count(*) npagos, sum(pago) tpagos
from alumnos a, pagos p, estados e
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
group by estado
order by 1;

select estado, sexo, count(*) npagos, sum(pago) tpagos
from alumnos a, pagos p, estados e
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
and sexo = 'f'
group by estado, sexo
order by 1;

select * from pagos where year(fecha_pago) = 2018;

select year(fecha_pago) anio, estado, sexo, count(*) npagos, sum(pago) tpagos
from (select * from alumnos where sexo = 'f') a,
pagos p, estados e
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
and sexo = 'f'
group by year(fecha_pago), estado, sexo
order by 1;

select year(fecha_pago) anio, estado, sexo, count(*) npagos, sum(pago) tpagos
from (select * from alumnos where sexo = 'f') a,
(select * from pagos where year(fecha_pago) = 2018) p, estados e
where a.clave_alu = p.clave_alu
and a.id_estado = e.id_estado
and sexo = 'f'
group by year(fecha_pago), estado, sexo
order by 1;











