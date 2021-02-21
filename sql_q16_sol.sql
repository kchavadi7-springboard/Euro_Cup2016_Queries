USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


/*Write a SQL query to find referees and the number of matches they worked in each
venue.*/


SELECT rm.referee_name, sv.venue_name,  count(mm.﻿match_no) as matchesInVenue
FROM match_mast as mm
JOIN soccer_venue as sv ON sv.﻿venue_id = mm.venue_id
JOIN referee_mast as rm ON rm.﻿referee_id = mm.referee_id
GROUP BY rm.referee_name, mm.venue_id;

