with youngConferences(conference) as (select conference from authors group by conference having count(distinct year)<=15)
select distinct name from authors where name not in (
    select name from authors where conference not in (select conference from youngConferences)
) order by name;