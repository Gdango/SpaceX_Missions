Use SpaceX_Missions
-- sort Payload Mass vs Mission Outcome
drop table #Table1, #Table2, #Table3, #Table4

select "Mission Outcome", avg("Payload Mass (kg)") As Avg_PayLoadM, STDEV("Payload Mass (kg)") As STD_PayLoadM
from SpaceX_Mission_Data$
group by "Mission Outcome";

-- Mission Outcome versus Payload Orbit
select "Payload Orbit",  count("Payload Orbit") As Num_Success
INTO #Table1
from SpaceX_Mission_Data$
where "Mission Outcome" = 'Success'
group by "Payload Orbit" 

select "Payload Orbit", count("Mission Outcome") As Num_Failure
INTO #Table2
from SpaceX_Mission_Data$
where "Mission Outcome" = 'Failure'
group by "Payload Orbit"

select "Payload Orbit", count("Mission Outcome") As MissionOutcome
INTO #Table3
from SpaceX_Mission_Data$
group by "Payload Orbit";

select #Table3."Payload Orbit" as Payload_Orbit, #Table2.Num_Failure as Num_Failure
INTO #Table4
from #Table3
left join #Table2
on #Table3."Payload Orbit" = #Table2."Payload Orbit"

select #Table4.Payload_Orbit, #Table4.Num_Failure, #Table1.Num_Success
from #Table4
left join #Table1
on #Table4.Payload_Orbit = #Table1."Payload Orbit"


select * from SpaceX_Mission_Data$;