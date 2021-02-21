USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


/*Write a SQL query to find the players, their jersey number, and playing club who
were the goalkeepers for England in EURO Cup 2016.*/

SELECT player_mast.jersey_no, player_mast.player_name, player_mast.playing_club 
FROM  player_mast 
where player_mast.team_id = 
(SELECT soccer_country.﻿country_id 
      FROM soccer_country 
       WHERE country_name = 'England') AND player_mast.posi_to_play = 'GK';