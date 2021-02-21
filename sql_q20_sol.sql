USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find the substitute players who came into the field in the first
half of play, within a normal play schedule*/


SELECT pio.﻿match_no, pm.player_name, pio.play_half,  pio.play_schedule
FROM player_in_out as pio
JOIN player_mast as pm ON pm.﻿player_id = pio.player_id
WHERE pio.play_half = 1 AND pio.play_schedule = 'NT' and pio.in_out = 'I';

