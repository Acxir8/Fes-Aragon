use colegio;

show function status;

show function status where db = 'colegio';


-- Funciones

delimiter $$
drop function if exists saludo $$
create function saludo(str varchar(100))
returns varchar(150)
deterministic
begin 
	declare resultado varchar(150) default '';
    declare hora int default 0;
    
    set hora = hour(sysdate());
    case
		when hora between 1 and 11 then set resultado = concat('Buenos dias ', str);
		when hora between 12 and 18 then set resultado = concat('Buenos tardes ', str);
		when hora between 19 and 23 then set resultado = concat('Buenos noches ', str);
        else set resultado = concat('Hola', str);
    end case;
    return resultado;
end $$
delimiter ;

delimiter $$
drop function if exists saludo $$
create function saludo(str varchar(100), fecha datetime)
returns varchar(150)
deterministic
begin 
	declare resultado varchar(150) default '';
    declare hora int default 0;
    
    set hora = hour(fecha);
    case
		when hora between 1 and 11 then set resultado = concat('Buenos dias ', str);
		when hora between 12 and 18 then set resultado = concat('Buenos tardes ', str);
		when hora between 19 and 23 then set resultado = concat('Buenos noches ', str);
        else set resultado = concat('Hola', str);
    end case;
    return resultado;
end $$
delimiter ;


delimiter $$
drop function if exists promedio $$
create function promedio(matricula varchar(10), curso varchar(10))
returns decimal(10, 2)
reads sql data
deterministic
begin 
	declare nmat int;
    declare suma float;
    declare resultado decimal(10,2) default 0;
    
    select count(e.clave_mat) into nmat
    from (select * from evaluaciones where clave_alu = matricula and id_curso = curso) e join materias m using(clave_mat)
    where promedia = 1;
    
    select sum(calificacion) into suma from evaluaciones 
    where clave_alu = matricula and id_curso = curso;
    
    set resultado = format((suma / nmat), 2);
    
    return resultado;
end $$
delimiter ;


show create function saludo;

select saludo('Patito23');

select nombre, fedita, saludo(concat_ws(' ', nombre, ap_paterno, ap_materno), fedita) saludo
from alumnos;

select promedio('11070116', 'C012');
select * from evaluaciones limit 3;

select * from (
select clave_alu, concat_ws(' ', a.nombre, ap_paterno, ap_materno) alumno, abreviatura curso, promedio(a.clave_alu, sa.id_curso) promedio
from alumno_salon sa natural join alumnos a
join cursos c on(sa.id_curso = c.id_curso)) x
where promedio is not null;

-- bv2


delimiter $$
drop function if exists promedio $$
create function promedio(matricula varchar(10), curso varchar(10))
returns decimal(10, 2)
reads sql data
deterministic
begin 
	declare nmat int;
    declare suma float;
    declare resultado decimal(10,2) default 0;
    
    select format(avg(e.calificacion),2) into resultado
    from (select * from evaluaciones where clave_alu = matricula and id_curso = curso) e join materias m using(clave_mat)
    where promedia = 1;
    
    return resultado;
end $$
delimiter ;

select * from (
select clave_alu, concat_ws(' ', a.nombre, ap_paterno, ap_materno) alumno, abreviatura curso, promedio(a.clave_alu, sa.id_curso) promedio
from alumno_salon sa natural join alumnos a
join cursos c on(sa.id_curso = c.id_curso)) x
where promedio is not null;



delimiter $$
drop function if exists edad $$
create function edad(fecha date)
returns varchar(255)
reads sql data
deterministic
begin 
	return concat_ws(' ',
    year(from_days(datediff(now(),fecha))), 'AÑOS',
    month(from_days(datediff(now(),fecha))), 'MESES',
    day(from_days(datediff(now(),fecha))), 'DIAS');
end $$
delimiter ;


select clave_alu, concat_ws(' ', nombre, ap_paterno, ap_materno) alumno, fedita, edad(fedita) edad
from alumnos;




