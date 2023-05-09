SELECT 
A.USER_ID,
ROUND(SUM(CASE WHEN action='confirmed' THEN 1 ELSE 0 END)/COUNT(*),2) AS confirmation_rate 
FROM Signups A
LEFT JOIN Confirmations B
ON A.user_id =B.user_id
GROUP BY A.user_id;