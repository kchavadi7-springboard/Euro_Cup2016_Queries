USE euro_cup_2016;

-- 7. Write a SQL query to find all the venues where matches with penalty shootouts were
-- played.


SELECT soccer_venue.venue_name
FROM match_mast
JOIN soccer_venue ON match_mast.venue_id = soccer_venue.﻿venue_id
JOIN soccer_city ON soccer_venue.city_id = soccer_city.﻿city_id
WHERE match_mast.decided_by = 'P';