USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find all available information about the players under contract to
Liverpool F.C. playing for England in EURO Cup 2016.*/


SELECT * FROM  player_mast where player_mast.team_id = 
(SELECT soccer_country.﻿country_id 
      FROM soccer_country 
       WHERE country_name = 'England') AND player_mast.playing_club LIKE 'Liverpool%';