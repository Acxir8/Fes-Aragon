use datosabiertos;


-- Número de resultados antigenos por estado
select distinct RESULTADO_ANTIGENO from COVID19MEXICO;
desc COVID19MEXICO;

select distinct * from bdcolegio02.estados;

select c.estado, count(*)
from datosabiertos.COVID19MEXICO da 
join bdcolegio02.estados c on (da.ENTIDAD_RES = c.estado)
where da.RESULTADO_ANTIGENO = 1
group by RESULTADO_ANTIGENO;

select abreviatura, ncasos
from
(select entidad_res, count(*) ncasos
from datosabiertos.COVID19MEXICO
where RESULTADO_ANTIGENO = 1
group by entidad_res) x
join bdcolegio02.estados e on (x.entidad_res = e.id_estado)
order by abreviatura;