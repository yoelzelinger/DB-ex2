select distinct name from authors where year<1980 and name not in (select distinct name from conferences natural join authors where area<>'theory') order by name;