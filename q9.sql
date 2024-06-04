with articleCountTable(country, institution, articleCount) as (select country, institution, sum(totalcount) from institutions natural join authors group by country, institution),
maxArticleCountTable(country, maxArticleCount) as (select country, max(articleCount) from articleCountTable group by country)
select distinct country, institution, maxArticleCount as countryCount from articleCountTable natural join maxArticleCountTable where articleCount=maxArticleCount order by country, institution;