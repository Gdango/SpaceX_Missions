Use SpaceX_Missions

/*select "Vehicle Type", "Payload Mass (kg)"
--avg("Payload Mass (kg)"), STDEV("Payload Mass (kg)")
from SpaceX_Mission_Data$*/

select "Vehicle Type", avg("Payload Mass (kg)"), STDEV("Payload Mass (kg)")
from SpaceX_Mission_Data$
group by "Vehicle Type";

select "Vehicle Type", count("Vehicle Type")
from SpaceX_Mission_Data$
where "Payload Mass (kg)" < 400
group by "Vehicle Type"

select "Vehicle Type", count("Vehicle Type")
from SpaceX_Mission_Data$
where "Payload Mass (kg)" < 400
group by "Vehicle Type"





