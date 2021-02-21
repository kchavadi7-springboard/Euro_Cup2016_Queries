USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find the number of captains who were also goalkeepers.*/


SELECT COUNT(*) as captainsAlsoGK FROM 
(SELECT count(mc.player_captain) as countOfCaptains
FROM match_captain as mc
JOIN match_details as md ON mc.﻿match_no = md.﻿match_no
WHERE mc.player_captain = md.player_gk 
GROUP BY mc.player_captain) as w;

