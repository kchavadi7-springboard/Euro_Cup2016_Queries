USE euro_cup_2016;

-- 4.Write a SQL query to compute a list showing the number of substitutions that
-- happened in various stages of play for the entire tournament.


SELECT match_mast.﻿match_no as `Match number`, player_in_out.team_id as `TeamID`,player_in_out.player_id as `PlayerID`, player_in_out.in_out as `InOut`,
player_in_out.time_in_out as `Timer InOut`, player_in_out.play_schedule as `Play Schedule`, match_mast.play_stage
FROM player_in_out
JOIN match_mast
ON match_mast.﻿match_no = player_in_out.﻿match_no;