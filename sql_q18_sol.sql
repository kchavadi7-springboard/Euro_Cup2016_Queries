USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));

/*Write a SQL query to find the highest number of foul cards given in one match.*/


SELECT mm.﻿match_no, mm.stop1_sec, mm.stop2_sec, (mm.stop1_sec + mm.stop2_sec) as totalTimeout
FROM match_mast as mm
ORDER BY totalTimeout desc LIMIT 1;