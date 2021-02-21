USE euro_cup_2016;

-- 5. Write a SQL query to find the number of bookings that happened in stoppage time.



SELECT COUNT(*) 
FROM player_booked
WHERE player_booked.play_schedule = 'ST';



