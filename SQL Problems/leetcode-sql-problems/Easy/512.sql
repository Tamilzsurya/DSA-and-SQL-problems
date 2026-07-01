SELECT 
    player_id,
    device_id
FROM activity t1
JOIN (
    SELECT 
        player_id,
        MIN(event_date) AS first_login
    FROM activity 
    GROUP BY player_id
) t2
ON t1.player_id = t2.player_id
AND t1.event_date = t2.first_login;


-- ********** In my github problem Number: 8 | Leetcode Problem 512: Game Play Analysis-II**********
-- Question

-- Write a solution to report the device that is first logged in for each player.