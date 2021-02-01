-- QUIRIES --

use wikigarden;

-- 1.	Show the users that have made garden reports for which plants.
select distinct username, Scientific_Name
from garden_report
join user using (user_id)
join flower using (flower_id);


-- 2.	Show the weather for users 
select u.username, s.state, w.AverageTemperature, w.dt as date
from user u 
join state s using (state_id)
join stateweather sw using (state_id)
join weather w using (weather_id);


-- 3.	Show what stores sell which plants 
select Scientific_Name, name as store, address
from flowerstore
join flower using (flower_id)
join store using (store_id);


-- 4.	Show which stores users go to and where the user is from
select username,name, address, state
from userstore
join user using (user_id)
join store using (store_id)
join state using (state_id)
order by username;


-- 5.	Is a user taking care of their plants? See the average reported height of a user’s plant.
select u.username, avg(g.height) as 'avg_height'
from garden_report g
join user u using (user_id)
group by u.username;


-- 6.	For each flower, how well did it perfom in a state compared to its expected height?
select flower.Scientific_Name, state.state, round(avg(g.height), 1) as avg_height_in_state, height_mature
from flower
join userflower using (flower_id)
join user using (user_id)
join state using (state_id)
join garden_report g using (flower_id)
group by flower.Scientific_Name, state.state, height_mature
order by state.state;


-- 7.	How many users are there in a state, include states with no users?
select state.state, count(u.user_id)  as users_in_state
from user u 
right join state using (state_id)
group by state.state;


-- 8.	Are there any super users, which user made the most reports?
select max(username) as super_user, max(num_report) as num_reports
from (select username, count(*) as num_report
	from garden_report
    join user using (user_id)
	group by user_id
	order by count(*) desc) y;


-- 9.	What flower is the most popular overall (has the most reports?)
select max(scientific_name) as popular_flower, max(num_reports) as num_reports
from (select Scientific_Name, count(garden_report_id) as num_reports
	from flower
	join garden_report using (flower_id)
	group by Scientific_Name
	order by num_reports desc) c;
    
    
-- 10.	Is the plant in the correct environment (state)?
select 	username,
		state_ab, 
        scientific_name, 
        state_and_province,
        if (locate(state_ab, state_and_province) > 0, true, false) as "correct environment"
from user
join state using (state_id)
join garden_report using (user_id)
join flower using (flower_id)
order by state_ab;


-- 11.	Track the growth of specific user plant. Check to see if it is in the correct environment 
select  g.flower_id,
		g.user_id, 
        g.height,
        u.username,
        s.state_ab,
        scientific_name,
        state_and_province,
        if (locate(s.state_ab, state_and_province) > 0, true, false) as "correct environment"
from garden_report g
join user u using (user_id)
join state s using (state_id)
join flower f using (flower_id)
where g.user_id = 29 and g.flower_id = 145;


-- 12.	Are some flowers harder to find? (how many stores are selling a given flower?)
select scientific_name, count(name) as num_stores_selling
from flower
left join flowerstore using (flower_id)
left join store using (store_id)
group by scientific_name
order by num_stores_selling;


