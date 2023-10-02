use colegio;


select nombre, curp, email
from alumnos where nombre like '%jose%';

select nombre, curp, email
from alumnos where binary nombre like '%jose%'; -- Binary reliza que distinga entre mayusculas y minusculas


select nombre, curp, email
from alumnos where binary nombre like '%JOSE%';


select nombre, curp, email, binary nombre like 'jose',
binary nombre like 'JOSE', sexo = 'f'
from alumnos where binary nombre like 'jose';

select nombre, curp, email, lower(nombre), upper(email)
from alumnos where binary lower(nombre) like '%jose%';

update alumnos set email = upper(email) 
where email <> '';

update alumnos set email = lower(email) 
where email <> '';

select concat(nombre,' ', ap_paterno, ' ', ap_materno) alumno,
 curp, email
from alumnos;

select concat(nombre,' ', ap_paterno, ' ', ap_materno) alumno,
concat_ws(' ',nombre, ap_paterno, ap_materno) alu,
curp, email
from alumnos;

select concat(nombre,' ', ap_paterno, ' ', ap_materno) alumno,
concat_ws('**',nombre, ap_paterno, ap_materno, curp, email) a,
replace(nombre, 'A', '4') r, replace(nombre, 'JOSE', 'JUAN') j
from alumnos
where nombre like '%jose%';

select nombre, ap_paterno, sexo, curp, email,
replace(
(lower(concat(left(nombre, 1),'.', ap_paterno,'@aragon.mx'))),
' ', '_') newmail
from alumnos where email not like '%@%';

update alumnos set email = replace(
(lower(concat(left(nombre, 1),'.', ap_paterno,'@aragon.mx'))),
' ', '_')
where email not like '%@%';



select nombre, ap_paterno, sexo, curp, email
from alumnos where email like '%aragon.mx%';

select nombre, ap_paterno, sexo, curp, email,
if(sexo = 'F', 'FEMENINO', '') f
from alumnos where email like '%aragon.mx%';

select nombre, ap_paterno, sexo, curp, email,
if(sexo = 'F', 'FEMENINO', 
	if(sexo = 'M', 'MASCULINO',	
		'NO DEFINIDO')) genero
from alumnos where email like '%aragon.mx%';



select nombre, ap_paterno, sexo, curp, email,
replace(
(lower(concat(left(nombre, 1),'.', ap_paterno,if(sexo = '', '@fes.mx', '@unam.mx')))),
' ', '_') newmail
from alumnos where email like '%aragon.mx%';


select nombre, ap_paterno, sexo, curp, email, 
if(length(curp) <> 18, 'SIN CURP', curp) curp
from alumnos where email like '%aragon.mx%';

select nombre, locate( ' ', nombre),
left(nombre,locate( ' ', nombre)-1), 
mid(nombre, locate(' ', nombre)+1),
if(locate(' ', nombre) = 0, nombre,
	left(nombre,locate( ' ', nombre)-1) ) nom1,
    if(locate(' ', nombre) = 0, '', mid(nombre, locate(' ', nombre)+1) ) nom2
from alumnos;

select nombre, repeat(nombre, 3)
from alumnos;

select concat_ws(',',nombre, ap_paterno, ap_materno, curp, email) datos
from alumnos where nombre like '%jose%';

select nombre, ap_paterno, ap_materno, curp, email
from alumnos where nombre like '%jose%';


set @b = ' ';

select length(nombre) l
from alumnos
order by 1 desc
limit 1;


select concat(
	nombre, repeat(@b, 30 - length(nombre)),
    ap_paterno, repeat(@b, 30 - length(ap_paterno)),
    ap_materno, repeat(@b, 30 - length(ap_materno)),
    sexo, repeat(@b, 1 - length(sexo)),
    curp, repeat(@b, 18 - length(curp))
)datos
from alumnos
where nombre like '%jose%'
into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\alumnos_lf.txt';

show variables like '%secure%';



