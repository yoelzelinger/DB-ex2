with articleCountTable(year, name, articleCount) as
    (select year, name, sum(totalcount) from conferences natural join authors
        where institution='Hebrew University of Jerusalem'
          and area='ai' and year between 2000 and 2020 group by year, name),
maxArticleCountTable(year, maxArticleCount) as (select year, max(articleCount) from articleCountTable group by year)
select distinct year, name from articleCountTable natural join maxArticleCountTable
                           where articleCount=maxArticleCount order by year, name;