USE euro_cup_2016;

/*2. Write a SQL query to find the number of matches that were won by penalty shootout.*/

SELECT count(*) 
FROM match_mast 
INNER JOIN penalty_shootout 
ON match_mast.﻿match_no = penalty_shootout.match_no
WHERE match_mast.results = 'WIN';



