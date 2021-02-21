USE euro_cup_2016;

-- 6.Write a SQL query to find the number of matches that were won by a single point, but
-- do not include matches decided by penalty shootout.



SELECT mm.﻿match_no, mm.results, mm.decided_by, mm.goal_score
FROM match_mast as mm
WHERE mm.decided_by = 'N' and mm.results = 'WIN' AND mm.﻿match_no IN
(SELECT m.matchNo FROM
(SELECT match_mast.﻿match_no as matchNo, match_mast.goal_score, (SUBSTRING_INDEX(match_mast.goal_score, '-', 1))  as `first_part`,
 SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1)  as `strp`,
  -- MONTH(str_to_date(CONCAT('2017-',   SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1) , '-29'), "%Y-%M-%d") ) as r,
 MONTH(str_to_date(CONCAT('2017-',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '-29'), "%Y-%M-%d") ) as dt
FROM match_mast
WHERE match_mast.goal_score LIKE '0_-%' 
and 
(MONTH(str_to_date(CONCAT('2017-',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '-29'), "%Y-%M-%d") )) - (SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1) ) = 1) as m ) ;




/*
SELECT * FROM match_mast;

SELECT m.matchNo FROM
(SELECT match_mast.﻿match_no as matchNo, match_mast.goal_score, (SUBSTRING_INDEX(match_mast.goal_score, '-', 1))  as `first_part`,
 SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1)  as `strp`,
  -- MONTH(str_to_date(CONCAT('2017-',   SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1) , '-29'), "%Y-%M-%d") ) as r,
 MONTH(str_to_date(CONCAT('2017-',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '-29'), "%Y-%M-%d") ) as dt
FROM match_mast
WHERE match_mast.goal_score LIKE '0_-%' 
and 
(MONTH(str_to_date(CONCAT('2017-',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '-29'), "%Y-%M-%d") )) - (SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1) ) = 1) m ;

 SUBSTRING_INDEX(match_mast.goal_score, '-', -1) as `second_p`,
 CONCAT("'",SUBSTRING_INDEX(match_mast.goal_score, '-', -1), "'") as t,
str_to_date(CONCAT("'",SUBSTRING_INDEX(match_mast.goal_score, '-', -1), "'"), '%M') as m,
,
 STR_TO_DATE(CONCAT('2017/',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '/29'), '%Y/%m/%d') as d,
CAST(  CONCAT('2017-',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '-29') as DATE ) as actD,
MONTHNAME(SUBSTRING_INDEX(match_mast.goal_score, '-', -1)) as `blah`,

str_to_date(SUBSTRING_INDEX(match_mast.goal_score, '-', -1), '%b')as `second_part`,

MONTH(str_to_date(CONCAT('2018/',SUBSTRING_INDEX(match_mast.goal_score, '-', -1), '/01'), '%Y/%m/%d' )) as 'meh'

(SUBSTR((SUBSTRING_INDEX(match_mast.goal_score, '-', 1)), 2, 1) ) <  (MONTH(str_to_date(CONCAT('2017-',  SUBSTRING_INDEX(match_mast.goal_score, '-', -1) , '-29'), "%Y-%M-%d") ))
AND 

*/

-- 2018/Jan/01

