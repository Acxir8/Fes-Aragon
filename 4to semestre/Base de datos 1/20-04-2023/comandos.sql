use colegio;

select nombre, ap_paterno, sexo, fedita from alumnos;
-- https://pastebin.com/K15ci9X
/*
%a	Abbreviated weekday name (Sun to Sat)
%b	Abbreviated month name (Jan to Dec)
%c	Numeric month name (0 to 12)
%D	Day of the month as a numeric value, followed by suffix (1st, 2nd, 3rd, ...)
%d	Day of the month as a numeric value (01 to 31)
%e	Day of the month as a numeric value (0 to 31)
%f	Microseconds (000000 to 999999)
%H	Hour (00 to 23)
%h	Hour (00 to 12)
%I	Hour (00 to 12)
%i	Minutes (00 to 59)
%j	Day of the year (001 to 366)
%k	Hour (0 to 23)
%l	Hour (1 to 12)
%M	Month name in full (January to December)
%m	Month name as a numeric value (00 to 12)
%p	AM or PM
%r	Time in 12 hour AM or PM format (hh:mm:ss AM/PM)
%S	Seconds (00 to 59)
%s	Seconds (00 to 59)
%T	Time in 24 hour format (hh:mm:ss)
%U	Week where Sunday is the first day of the week (00 to 53)
%u	Week where Monday is the first day of the week (00 to 53)
%V	Week where Sunday is the first day of the week (01 to 53). Used with %X
%v	Week where Monday is the first day of the week (01 to 53). Used with %x
%W	Weekday name in full (Sunday to Saturday)
%w	Day of the week where Sunday=0 and Saturday=6
%X	Year for the week where Sunday is the first day of the week. Used with %V
%x	Year for the week where Monday is the first day of the week. Used with %v
%Y	Year as a numeric, 4-digit value
%y	Year as a numeric, 2-digit value
*/
show variables like 'lc_time_names';
set lc_time_names = 'es_MX';
-- date_format(fecha, format)

select nombre, ap_paterno, sexo, fedita,
date_format(fedita, '%d') dia,
date_format(fedita, '%m') mes,
date_format(fedita, 'Dato cambia el %a %d del mes de %M del año %Y') ff
from alumnos;

select sysdate(), date_format(sysdate(),'Hoy es el día %j del año'),
date_format(sysdate(),'Es la semana no %u'),
date_format(sysdate(),'%Y-%m-%d');

select date_format(fedita,'%a') dia, count(*) nalu
from alumnos
group by date_format(fedita,'%a')
order by 2 desc;

select nombre, fedita,
date_format(fedita, '%Y-%m-%d') fecha,
date_format(fedita, '%T') H24,
date_format(fedita, '%r') H12,
date_format(fedita, '%p') ampm
from alumnos;


select nombre, fedita
from alumnos
where date_format(fedita, '%Y') = '2017';

select nombre, fedita, YEAR(fedita) anio, month(fedita) mes, 
monthname(fedita) nommes, day(fedita) dia, dayname(fedita) nomdia, 
dayofyear(fedita) diaanio, hour(fedita) hora, minute(fedita) min, second(fedita) sec,
quarter(fedita) trimestre
from alumnos;


select nombre, fedita, 
date_add(fedita, interval 1 year) mas,
date_sub(fedita, interval 1 year) menos,
date_add(fedita, interval -1 year) menoss,
date_add(fedita, interval 2 hour) h,
date_add(date_add(fedita, interval 2 hour), interval 1 year) ha
from alumnos;


select now() fecha, current_date() dat,
 current_time() hlocal,
date_add(current_time(), interval -1 hour) htj,
date_add(current_time(), interval 1 hour) hcn;
 

select nombre, fedita, datediff(now(), fedita) ddias,
datediff(now(), fedita) / 365 danios,
datediff(now(), fedita) * 24 dhoras
from alumnos;

select distinct year(fedita), date_format(fedita,'%Y')
from alumnos;

update alumnos
set fedita = date_add(fedita, interval -5 year);

select nombre, fedita, datediff(now(), fedita) ddias,
datediff(now(), fedita) / 365 danios,
datediff(now(), fedita) * 24 dhoras
from alumnos;



select nombre, fedita, datediff(now(), fedita) ddias,
timestampdiff(day, fedita, now()) difdias,
timestampdiff(year, fedita, now()) difa,
timestampdiff(month, fedita, now()) difm,
timestampdiff(hour, fedita, now()) difh,
timestampdiff(minute, fedita, now()) difmin,
timestampdiff(day, fedita, now()) difdias
from alumnos;


set @f = '2003-08-23';

select @f, datediff(now(), @f), 
from_days(datediff(now(), @f)),
date_format(from_days(datediff(now(), @f)),'tu edad es %y años, %m meses y %d dias');





