Use SpaceX_Missions

-- calculate failure percentage
select
"Failure Reason", count(*) / (select count(*) * 1.0 from SpaceX_Missions.dbo.SpaceX_Mission_Data$)
from SpaceX_Missions.dbo.SpaceX_Mission_Data$
where  "Mission Outcome" = 'Failure'
group by "failure Reason";

select "Failure Reason", count("Mission Outcome")
from SpaceX_Mission_Data$ 
where "Mission Outcome" = 'Failure'
group by "Failure Reason";

-- Result: Most failure was due to Collision During Launch
-- Notes: Mission Outcome is Failure, there's not Landing


-- What type of Vehicle would lead to mission success?
select "Vehicle Type", count("Mission Outcome")
from SpaceX_Mission_Data$
where "Mission Outcome" = 'Success'
group by "Vehicle Type";

select "Mission Outcome", count("Mission Outcome")
from SpaceX_Mission_Data$
group by "Mission Outcome";










