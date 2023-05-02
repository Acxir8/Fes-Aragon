use colegio;

-- Triggers

-- Validar new
-- Respaldar o guardar, after

-- Delimiter (lo que se guste usar) ejemplo: //, $$


desc information_schema.triggers;

select trigger_name, event_manipulation, event_object_table, action_statement
from information_schema.triggers
where trigger_schema = 'colegio';


insert into niveles values (null, 'ico');

delimiter $$
drop trigger if exists bi_niveles $$

create trigger bi_niveles
before insert on niveles
for each row 
begin 
	if(not new.nombre rlike '(ingenieria|licenciatura)') then
		signal sqlstate'45000'
        set message_text = 'El nombre de nivel no es valido';
    end if;
	set new.id_nivel = new.id_nivel + 100;
	set new.nombre = upper(new.nombre);
end $$
delimiter ;


delimiter $$
drop trigger if exists ai_niveles $$
create trigger ai_niveles
after insert on niveles
for each row 
begin 
	insert into grados values(new.id_nivel, new.nombre);
end $$
delimiter ;



insert into niveles values (40, 'ingenieria en computacion'),
(50, 'ingenieria industrial'), (60, 'licenciatura en derecho');


alter table grados modify nombre varchar (50) not null;

drop table if exists bitacora;
create table bitacora(
	id int not null auto_increment primary key,
    fecha datetime not null, 
    usuario varchar(50) not null,
    tabla varchar(50) not null,
    sentencia varchar(50) not null,
    accion text null
);

delimiter $$
drop trigger if exists ad_niveles $$
create trigger ad_niveles
after delete on niveles
for each row 
begin 
	insert into bitacora values(
    null, sysdate(), user(), 'NIVELES', 'DELETE', 
    json_object("id_nivel", old.id_nivel, "nombre", old.nombre)
    );
end $$
delimiter ;


delimiter $$
drop trigger if exists ad_niveles $$
create trigger ad_niveles
after delete on niveles
for each row 
begin 
	insert into bitacora values(
    null, sysdate(), user(), 'NIVELES', 'DELETE', 
    -- json_object("id_nivel", old.id_nivel, "nombre", old.nombre)
    concat_ws('|', old.id_nivel, old.nombre)
    );
end $$
delimiter ;

delimiter $$
drop trigger if exists au_niveles $$
create trigger au_niveles
after update on niveles
for each row 
begin 
	insert into bitacora values(
    null, sysdate(), user(), 'NIVELES', 'UPDATE', 
     json_object("old_id_nivel", old.id_nivel, "id_nivel", new.id_nivel,
     "old_nombre", old.nombre, "nombre", new.nombre)
    );
end $$
delimiter ;

select trigger_name, event_manipulation, event_object_table, action_statement
from information_schema.triggers
where trigger_schema = 'colegio';
select * from niveles;
select * from grados;

delete from niveles where id_nivel > 120;
delete from niveles where id_nivel >= 7;

update niveles set id_nivel = id_nivel + 1000, nombre = concat('NIV ', nombre);

update niveles set id_nivel = id_nivel - 1000, nombre = mid(nombre, 5);

select * from bitacora;


