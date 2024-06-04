select distinct institutions.institution, authors.name
from authors natural join institutions
where institutions.region = 'africa'
order by institutions.institution, authors.name;