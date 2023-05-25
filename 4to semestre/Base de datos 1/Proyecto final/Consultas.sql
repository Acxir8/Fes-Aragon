-- Consultas

-- 1.- Muestre los trabajadores que tengan el rol de "Administrador de diseño"
select Id_trabajador, concat_ws(' ', nombre, apellido_paterno, apellido_materno) Nombre, t.Id_rol, r.Nombre_rol
from trabajador t
natural join rol r
where r.nombre_rol like '%Administrador de diseño%';

-- 2.- Muestre el proyecto cuyo nombre sea "Desarrollo de aplicación móvil" y costo final, la empresa a quien se lo trabaja con su nombre, el estado en donde se encuentra y el número, así como el total de todos los pagos que la empresa ha realizado al proeycto
select p.Id_proyecto, p.nombre, p.Precio_final_venta Costo_final, p.Id_empresa, e.Nombre, es.Estado, pp.Monto, count(pp.Monto) Numero_pagos, sum(pp.monto) Total_pagos
from proyecto p
join pago_periodico pp on(p.Id_Proyecto = pp.Id_Proyecto)
join empresa e on(p.Id_empresa = e.Id_Empresa)
join estados es on(e.Id_Estados = es.Id_Estados)
where p.nombre like '%Desarrollo de aplicación móvil%'
group by  p.Id_proyecto, p.nombre, p.Precio_final_venta, p.Id_empresa, e.Nombre, es.Estado, pp.Monto;

-- 3.- Cree una vista de los trabajadores del proyecto "Desarrollo de aplicación móvil", con su nombre completo, RFC, Codigo postal y el estado en donde viven
create or replace view Trabajadores_DesarrolloDeAplicacionMovil as
select p.Id_proyecto, p.Nombre, t.Id_trabajador, concat_ws(' ', t.nombre, t.apellido_paterno, t.apellido_materno) NombreCompleto, t.RFC, t.Codigo_postal, e.Estado
from proyecto p 
join trabajador t on(p.Id_Proyecto = t.Id_Proyecto)
join estados e on(t.Id_Estados = e.Id_Estados)
where p.nombre like '%Desarrollo de aplicación móvil%';

select * from Trabajadores_DesarrolloDeAplicacionMovil;

-- 4.- Muestre el proyecto, su nombre, presupuesto estimado y costo final
select p.Id_proyecto, p.Nombre, lp.Presupuesto_estimado, p.Precio_final_venta
from proyecto p
join Lista_proyecto lp on(p.Id_Proyecto = lp.Id_Proyecto);

-- 5.- Muestre el proyecto, su nombre, se mostraran los trabajadores, su id, su nombre completo y cuanto se les debe pagar de acuerdo a las horas y horas extras trabajadas (las horas extras se pagan al mismo precio)
select p.Id_proyecto, p.Nombre, t.Id_Trabajador,  concat_ws(' ', t.nombre, t.apellido_paterno, t.apellido_materno) NombreCompleto, ((pt.Horas_trabajadas + pt.Hora_extras) * pt.Monto_por_hora) as Pago
from proyecto p
join trabajador t on(p.Id_Proyecto = t.Id_Proyecto)
join proyecto_trabajador pt on(t.Id_Trabajador = pt.Id_Trabajador)
order by p.Id_proyecto;


