USE euro_cup_2016;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


--  8. Write a SQL query to find the match number for the game with the highest number of
-- penalty shots, and which countries played that match.


SELECT match_details.﻿match_no, soccer_country.country_name
from match_details 
JOIN soccer_country ON match_details.team_id = soccer_country.﻿country_id
WHERE match_details.﻿match_no = (SELECT a.`match_id` from 
(SELECT match_details.﻿match_no as `match_id`,  SUM(match_details.penalty_score) as `penaltySum`
FROM match_details
GROUP BY match_details.﻿match_no
ORDER BY `penaltySum` desc
LIMIT 1) a);


/*SELECT SUM(match_details.penalty_score) as `penaltySum`, match_details.﻿match_no, match_details.team_id, soccer_country.﻿country_id, soccer_country.country_name
FROM match_details
JOIN soccer_country ON match_details.team_id = soccer_country.﻿country_id
GROUP BY match_details.﻿match_no
ORDER BY `penaltySum` desc
LIMIT 1;
SELECT * FROM match_mast;
SELECT * FROM match_details;
SELECT * FROM soccer_country;*/



-- Error Code: 1248. Every derived table must have its own alias


