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

