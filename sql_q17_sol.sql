USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find the country where the most assistant referees come from,
and the count of the assistant referees.*/


SELECT arm.country_id, sc.country_name, count(arm.﻿ass_ref_id) as refereeCount
FROM asst_referee_mast as arm
JOIN soccer_country as sc ON sc.﻿country_id = arm.country_id
GROUP BY arm.country_id
ORDER BY refereeCount desc LIMIT 1;