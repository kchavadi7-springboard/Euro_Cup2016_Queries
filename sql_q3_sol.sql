
USE euro_cup_2016;

-- 3. Write a SQL query to find the match number, date, and score for matches in which
-- no stoppage time was added in the 1st half.

SELECT * FROM match_mast;

SELECT match_mast.﻿match_no as `match number`, play_date as `date`, goal_score as `score`
FROM match_mast
WHERE match_mast.stop1_sec = 0;

