-- Consultas
-- Integrantes:
-- Cruces Hernández Noemi Guadalupe
-- Landeros Carpinteyro Ricardo
-- Mariaca Vazquez Enrique
-- Pedro Zarate Felipe de Jesus
-- Salvador Arrieta Jair Argel

-- 1.- Muestre los trabajadores que tengan el rol de "Administrador de diseño"
select Id_trabajador, concat_ws(' ', nombre, apellido_paterno, apellido_materno) Nombre, t.Id_rol, r.Nombre_rol
from trabajador t
natural join rol r
where r.nombre_rol like '%Administrador de diseño%';

-- 2.- Muestre el proyecto cuyo nombre sea "Desarrollo de aplicación móvil" y costo final, la empresa a quien se lo trabaja con su nombre, el estado en donde se encuentra y el número, así como el total de todos los pagos que la empresa ha realizado al proyecto
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

-- 6.- Cree una vista con la cantidad de trabajadores que hay en cada proyecto
create view Cantidad_Trabajadores as
select p.nombre Nombre_de_Proyecto, count(*) Numero_de_Trabajadores
from proyecto p
join trabajador t on (p.Id_Proyecto = t.Id_Proyecto)
group by p.nombre;
select * from Cantidad_Trabajadores;

-- 7.- Muestre a los trabajadores organizados por el proyecto en el que trabajan, para la empresa para la que están trabajado y por estado
select Id_Trabajador, concat_ws(' ', Apellido_Paterno, Apellido_Materno, t.nombre) Nombre_Trabajador, p.Id_Proyecto, p.nombre Nombre_Proyecto, e.Id_Empresa, e.nombre Nombre_Empresa, Razon_social, es.estado
from proyecto p
join empresa e on (e.Id_Empresa = p.Id_empresa)
join trabajador t on (t.Id_Proyecto = p.Id_Proyecto)
join estados es on (es.Id_Estados = e.Id_Estados);

-- 8.- Muestra el nombre de los proyectos y la empresa que lo solicitó
SELECT p.nombre AS 'Proyecto', e.nombre AS 'FABRICA'
FROM proyecto p
JOIN empresa e
ON (p.id_empresa = e.id_empresa)
ORDER BY e.nombre;

-- 9.- Número de proyectos por empresa Punto 8 de las especuificaciones : "A todas las empresas se les ha realizado 
-- al menos un proyecto y puede tener varios en curso"
SELECT e.nombre AS 'Empresa', COUNT(*) AS 'Numero de proyectos'
FROM proyecto p
JOIN empresa e
USING (id_empresa)
GROUP BY 1;

-- 10. Listar el nombre del trabajador, el proyecto al que pertenece y el rol que desempeña, ordenar por proyecto
SELECT CONCAT_WS(" ", t.nombre,t.apellido_paterno, t.Apellido_materno) AS 'Nombre completo', r.nombre_rol AS 'Rol', p.nombre AS 'PROYECTO'
FROM trabajador t 
JOIN rol r
ON (t.id_rol = r.id_rol)
JOIN proyecto p
ON ( p.id_proyecto = t.id_proyecto)
ORDER BY 3;

-- 11. Listar la cantidad de trabajadores en cada rol
SELECT r.nombre_rol AS 'Rol', COUNT(t.Id_proyecto) AS 'Numero de empleados'
FROM rol r
LEFT JOIN trabajador t
ON (r.id_rol=t.id_rol)
group by r.nombre_rol;

-- 12. Listar el nombre del proyecto, la empresa y la duración de cada proyecto en meses y años
SELECT p.nombre AS 'Proyecto', e.nombre 'Empresa',
TIMESTAMPDIFF(MONTH,p.fecha_inicio,p.fecha_finalizacion) AS 'Duracion en Meses',
TIMESTAMPDIFF(YEAR,p.fecha_inicio,p.fecha_finalizacion) AS 'Duracion en años' 
FROM proyecto p
JOIN empresa e
ON (p.id_empresa=e.id_empresa)
ORDER BY e.nombre;

-- 13. listar el nombre de los proyectos y la suma total de salarios de los trabajadores en cada uno
SELECT p.nombre AS 'Proyecto', SUM(pt.horas_trabajadas * pt.monto_por_hora) AS 'Total a pagar en salarios'
FROM proyecto_trabajador pt
JOIN trabajador t
ON (pt.id_trabajador = t.id_trabajador)
JOIN proyecto p
ON (t.id_proyecto=p.id_proyecto)
GROUP BY p.nombre;

-- 14. Listar el nombre de los proyectos,  que duran mas de  4 años,  poner nombre de empresa y duracion.
SELECT p.nombre AS 'Proyecto', e.nombre 'Empresa', TIMESTAMPDIFF(YEAR,p.fecha_inicio,p.fecha_finalizacion) AS 'Duracion en años' 
FROM proyecto p
JOIN empresa e
ON (p.id_empresa=e.id_empresa)
WHERE TIMESTAMPDIFF(year, fecha_inicio, fecha_finalizacion)>4;

-- 15. Listar número de proyectos por año e ingresos totales (suma de precios finales)
SELECT YEAR (fecha_finalizacion) Año , count(*) AS 'Numero de proyectos', SUM(precio_final_venta) AS 'Ingreso total'
FROM proyecto
GROUP BY 1;

-- 16. Listar el nombre del proyecto, la cantidad pagada por proyecto y  su restante
SELECT p.nombre AS 'Proyecto', SUM(pp.monto) 'Saldo pagado', (p.precio_final_venta-SUM(pp.monto))'Restante a pagar'
FROM proyecto p
JOIN pago_periodico PP
ON (p.id_proyecto=PP.id_proyecto)
GROUP by p.nombre, pp.monto, p.precio_final_venta;

-- 17. Listar el nombre de los proyectos que no tengan ningun pago, el nombre de la empresa y su telefono
SELECT p.nombre AS 'Proyecto', e.nombre AS 'Empresa', e.telefono
FROM proyecto p
LEFT JOIN pago_periodico PP
ON (p.id_proyecto=PP.id_proyecto)
JOIN empresa e
ON (p.id_empresa=e.id_empresa)
WHERE PP.id_proyecto is null; 

-- 19. Listar los proyectos que inician entre  las fechas 2024-12-31 y 2023-07-01, poner empresa que corresponde y fecha con
-- formato dia de la semana, numero de dia, mes y año 
set lc_time_names = 'es_MX';
SELECT p.nombre AS 'Proyecto', DATE_FORMAT(p.fecha_inicio, '%W-%d-%M-%Y') AS 'Fecha de inicio', e.nombre AS 'Empresa'
FROM
proyecto p
JOIN empresa e
ON (p.id_empresa=e.id_empresa)
WHERE fecha_inicio between '2023-07-01' AND '2024-12-31';

-- 20. Listar las empresas, con el numero de proyectos de cada una si tiene  1 poner "Sin descuento", si tiene mas de 1 poner "Descuento"
SELECT e.nombre AS 'Empresa', COUNT(*) AS 'Numero de proyectos', IF(COUNT(*)>1, 'Aplicar descuento', 'Sin descuento') AS 'Descuento'
FROM proyecto p
JOIN empresa e
USING (id_empresa)
GROUP BY 1;

-- 21 Listar los trabajadores y el numero de proyectos en los que han participado, cumple con la especificacion
SELECT Concat_ws(" ", t.nombre,t.apellido_paterno, t.Apellido_materno) AS 'Nombre completo', COUNT(*) AS 'Numero de proyectos'
FROM proyecto p
right join trabajador t
ON (p.id_proyecto = t.id_proyecto)
GROUP BY 1;

-- 22 listar todos los proyectos y empresas dentro de la fabrica de software, unicamente su id y nombre
select Id_Empresa as Id, Nombre from empresa
union
select Id_Proyecto, nombre from proyecto;