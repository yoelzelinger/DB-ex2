select distinct a.name
from authors a natural join (select a1.year, a1.conference from authors a1
where a1.name = 'Omri Abend') as o
group by a.name
having count(*) = (select distinct count(*) from authors where name = 'Omri Abend')
order by a.name;