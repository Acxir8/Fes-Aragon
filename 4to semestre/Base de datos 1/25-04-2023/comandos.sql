-- Vistas

use colegio;

show tables;
select * from alumnos;

create or replace view estudiantes as 
select * from alumnos;

select * from estudiantes;

desc estudiantes;

show create view estudiantes;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `estudiantes` AS select `alumnos`.`clave_alu` AS `clave_alu`,`alumnos`.`clave_admin` AS `clave_admin`,`alumnos`.`ap_paterno` AS `ap_paterno`,`alumnos`.`ap_materno` AS `ap_materno`,`alumnos`.`nombre` AS `nombre`,`alumnos`.`sexo` AS `sexo`,`alumnos`.`curp` AS `curp`,`alumnos`.`peso` AS `peso`,`alumnos`.`estatura` AS `estatura`,`alumnos`.`direccion` AS `direccion`,`alumnos`.`colonia` AS `colonia`,`alumnos`.`cp` AS `cp`,`alumnos`.`ciudad` AS `ciudad`,`alumnos`.`id_estado` AS `id_estado`,`alumnos`.`delegacion` AS `delegacion`,`alumnos`.`telefono` AS `telefono`,`alumnos`.`celular` AS `celular`,`alumnos`.`email` AS `email`,`alumnos`.`status_alu` AS `status_alu`,`alumnos`.`fedita` AS `fedita` from `alumnos`;

show tables from information_schema;

select * from information_schema.tables
where table_schema = 'colegio'
and table_type = 'VIEW';

select * from estudiantes;

create temporary table alumnos_tmp like alumnos;
insert into alumnos_tmp select * from alumnos;

select * from alumnos_tmp;

truncate table alumnos;

select * from estudiantes;

drop table alumnos;

desc estudiantes;

create table alumnos like alumnos_tmp;
insert into alumnos select * from alumnos_tmp;


select * from estudiantes where status_alu = 'AC';

select status_alu, count(*) 
from estudiantes
group by 1;


create or replace view inscritos as
select * from estudiantes where status_alu = 'AC';

select * from inscritos;

update alumnos set status_alu = 'EX', ciudad = 'EX'
where status_alu = 'AC' and ciudad = '';

desc alumnos;

select * from estudiantes where ciudad = 'ex';


update alumnos set status_alu = 'AC', ciudad = ''
where status_alu = 'EX' and ciudad = 'EX';

create or replace view alumnos_pagos as
select a.clave_alu matricula, concat_ws(' ', ap_paterno, ap_materno, nombre) alumno,
ifnull(sum(pago), 0) tpagos, count(pago) npagos, 
ifnull(max(fecha_pago), '000-00-00') ultima_fpago
from alumnos a 
natural left join pagos p
group by a.clave_alu;


select * from alumnos_pagos order by alumno;

select matricula, alumno, tpagos, observaciones salon
from alumnos_pagos ap
left join (select * from alumno_salon where activo = 1) sa
on (ap.matricula = sa.clave_alu)
left join salones s on(sa.id_salon = s.id_salon)
where alumno like '%aguila%'
order by alumno;

create or replace view alumnas as
select * from alumnos where sexo = 'F';

select * from alumnas;

create or replace view alumnos_pagos_salon as
select matricula, alumno, tpagos, observaciones salon
from alumnos_pagos ap
left join (select * from alumno_salon where activo = 1) sa
on (ap.matricula = sa.clave_alu)
left join salones s on(sa.id_salon = s.id_salon)
order by alumno;

show tables;

drop view alumno_pagos_salon;

create or replace view personas as
select clave_alu, concat_ws(' ', ap_paterno, ap_materno, nombre) nombre, sexo, curp, email, 'alumno'  tipo
from alumnos
union
select clave_prof, concat_ws(' ', apellido_p, apellido_m, nombres) nombre, sexo, curp, email, 'profesor'
from profesores;

select * from personas order by nombre;





