select distinct a1.name
from authors a1 natural join conferences c1
,authors a2 natural join conferences c2 natural join institutions i
where
i.institution = 'Hebrew University of Jerusalem' and
a1.year = a2.year and
a1.name = a2.name and
c1.subarea = 'ai' and
c2.subarea = 'economics';