
USE euro_cup_2016;
/*1. Write a SQL query to find the date EURO Cup 2016 started on.*/

-- SELECT COUNT(*) from match_mast;
-- SELECT * FROM match_mast;
-- SELECT play_date, str_to_date(play_date, '%Y-%m-%d') as actDate, goal_score FROM match_mast
-- WHERE venue_id = 20008
-- ORDER BY actDate;



SELECT str_to_date(play_date, '%Y-%m-%d') as actDate
from match_mast
ORDER BY actDate
LIMIT 1;




