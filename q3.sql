select distinct institution, name from institutions natural join authors
where country='il' and totalcount>=2 and conference like 'sig%' order by institution, name;