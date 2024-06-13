select distinct name from authors where name not in
(select distinct name from conferences natural join authors where year>1980 or area<>'theory')
order by name;