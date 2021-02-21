USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find the goalkeeper’s name and jersey number, playing for
Germany, who played in Germany’s group stage matches.*/



SELECT player_mast.player_name, player_mast.jersey_no 
FROM match_details 
JOIN player_mast 
ON player_mast.﻿player_id = match_details.player_gk
WHERE match_details.team_id = 
	(SELECT soccer_country.﻿country_id 
      FROM soccer_country 
       WHERE country_name = 'Germany') AND match_details.play_stage = 'G'
        GROUP BY player_mast.player_name, player_mast.jersey_no;
        






