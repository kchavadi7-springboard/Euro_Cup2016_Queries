USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query that returns the total number of goals scored by each position on
each country’s team. Do not include positions which scored no goals.*/


SELECT md.team_id, SUM(md.goal_score) as goals, pm.posi_to_play, soccer_country.country_name
FROM match_details as md
JOIN player_mast  as pm ON pm.team_id = md.team_id
JOIN soccer_country ON md.team_id =soccer_country.﻿country_id
WHERE md.goal_score > 0
GROUP BY md.team_id, pm.posi_to_play;

