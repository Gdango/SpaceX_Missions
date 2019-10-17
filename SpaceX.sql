Use SpaceX_Missions

-- calculate failure percentage
/*select
"Failure Reason", count(*)*100 / (select count(*) * 1.0 from SpaceX_Missions.dbo.SpaceX_Mission_Data$)
from SpaceX_Missions.dbo.SpaceX_Mission_Data$
where  "Mission Outcome" = 'Failure'
group by "failure Reason";*/

/*select "Failure Reason", count("Mission Outcome")
from SpaceX_Mission_Data$ 
where "Mission Outcome" = 'Failure'
group by "Failure Reason";*/

-- Result: Most failure was due to Collision During Launch
-- Notes: Mission Outcome is Failure, there's not Landing


-- What type of Vehicle would lead to failure?
select "Vehicle Type", count("Vehicle Type") as "Failure Quantity"
from SpaceX_Mission_Data$
where "Mission Outcome" = 'Failure'
group by "Vehicle Type";

select t1."Vehicle Type", t1."Failure Quantity", t2."Success Quantity"
from
((select "Vehicle Type", count("Vehicle Type") as "Failure Quantity"
from SpaceX_Mission_Data$
where "Mission Outcome" = 'Failure'
group by "Vehicle Type as t1) and 
(select "Vehicle Type", count("Vehicle Type") as "Success Quantity"
from SpaceX_Mission_Data$
where "Mission Outcome" = 'Success' as t2))
join t1."Vehicle Type" = t2."Vehicle Type"



select "Mission Outcome", count("Mission Outcome") as Quantity
from SpaceX_Mission_Data$
group by "Mission Outcome";










