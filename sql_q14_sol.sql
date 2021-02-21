USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


/*Write a SQL query to find referees and the number of bookings they made for the
entire tournament. Sort your answer by the number of bookings in descending order.*/


SELECT mm.﻿match_no, mm.referee_id, count(pb.booking_time) as bookings, rm.referee_name
FROM match_mast as mm
JOIN player_booked as pb 
ON mm.﻿match_no = pb.﻿match_no
JOIN referee_mast as rm ON  rm.﻿referee_id =  mm.referee_id
group by pb.﻿match_no
ORDER BY bookings desc;

