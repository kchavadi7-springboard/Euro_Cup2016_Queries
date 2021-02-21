USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find all the defenders who scored a goal for their teams.*/

SELECT player_mast.team_id, player_mast.player_name, player_mast.posi_to_play
FROM player_mast 
JOIN match_details as `md` ON `md`.player_gk = player_mast.﻿player_id
WHERE player_mast.posi_to_play = 'DF' AND `md`.goal_score > 0
GROUP BY player_mast.team_id, player_mast.player_name, player_mast.posi_to_play;

