select authors.name, institutions.institution
from authors natural join institutions
where institutions.region = 'africa'
order by institutions.institution, authors.name;