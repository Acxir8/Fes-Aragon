use colegio;

select nombre, curp, sexo
from alumnos
where (nombre like '%JOSE%' or nombre like '%ADRIAN%' or nombre like '%ALEJAN%');

-- [] rangos
-- () or
-- {} cadenas

select nombre, curp, sexo
from alumnos
-- Rlike (todo lo que contenga a), like (todo lo que sea igual a)
--  ^ es todo lo que inicie con jose
where nombre Rlike '^JOSE'; 


select nombre, curp, sexo
from alumnos
-- Rlike (todo lo que contenga a), like (todo lo que sea igual a)
--  $ todo lo que termine con jose
where nombre Rlike 'JOSE$'; 

select nombre, curp, sexo
from alumnos
-- Rlike (todo lo que contenga a), like (todo lo que sea igual a)
--  ^ y $ todo lo que empieza y termine con jose
where nombre Rlike '^JOSE$'; 

select nombre, curp, sexo
from alumnos
where nombre Rlike '(JOSE|ADRIAN|ALEJANDR)'; 

select nombre, curp, sexo
from alumnos
where nombre Rlike '(^jose|ADRIAN|ALEJANDR)'; 

select nombre, curp, sexo
from alumnos
where nombre Rlike '[ROZ]$';

select nombre, curp, sexo
from alumnos
where nombre Rlike '[R-Z]$'
order by nombre;

select 
if(nombre Rlike '^N', 'inician con N', 'no inician con N') as matching,
count(*)
from alumnos
group by matching;

select nombre, curp, sexo
from alumnos
where curp regexp '^[A-Za-z]{4,}[0-9]{6,}[HM][A-Za-z]{2}[B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z]{3}[0-9]{2}'
order by nombre;

select nombre, curp, sexo
from alumnos
where NOT curp regexp '^[A-Za-z]{4,}[0-9]{6,}[HM][A-Za-z]{2}[B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z]{3}[0-9]{2}'
order by nombre;

select nombre, curp, sexo
from alumnos
where NOT curp regexp '^[A-Za-z]{4,}[0-9]{6,}[HM][A-Za-z]{2}[B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z]{3}[[A-Za-z{1}0-9]{1}]|[[0-9]{2}]'
order by nombre;

select nombre, curp, sexo
from alumnos
where curp regexp '^[A-Za-z]{4,}[0-9]{6,}[HM][A-Za-z]{2}[B,C,D,F,G,H,J,K,L,M,N,P,Q,R,S,T,V,W,X,Y,Z]{3}[[A-Za-z{1}0-9]{1}|[[0-9]{2}]]'
order by nombre;


select nombre, curp, email
from alumnos
where email regexp '[0-9]'
order by nombre;


select nombre, curp, email
from alumnos
where email regexp '[:digit:]';

select nombre, curp, email
from alumnos
where email regexp '^[^@]+@+\.[:alpha:]{2,}'
and not email regexp '(miemail|hitmail)i*';

