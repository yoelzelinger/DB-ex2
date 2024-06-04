select distinct a.name
from authors a natural join conferences c
group by a.name, c.subarea
having subarea = 'ml' and count(distinct c.conference) > 2 and MAX(year) > 2019
order by a.name;