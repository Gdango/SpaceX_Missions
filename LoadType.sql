Use SpaceX_Missions

select "Payload Type", count("Payload type")
from SpaceX_Mission_Data$
where "Mission Outcome" = 'failure'
group by "Payload type"

select
t1."Payload Type", t1.(count("Payload type")), t2.(count("Payload type"))
from
(select "Payload Type", count("Payload type")
from SpaceX_Mission_Data$
where "Mission Outcome" = 'failure'
group by "Payload type") as t1
inner join
(select "Payload Type", count("Payload type")
from SpaceX_Mission_Data$
where "Mission Outcome" = 'success'
group by "Payload type") as t2
on t1."Payload Type" = t2."Payload type"


select * from SpaceX_Mission_Data$;