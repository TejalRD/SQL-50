# Write your MySQL query statement below
SELECT id, COUNT(*) as num
FROM (
    SELECT requester_id AS id, accepter_id AS friend
    FROM RequestAccepted 
    UNION ALL
    SELECT accepter_id AS id, requester_id AS friend
    FROM RequestAccepted 
) AS allfriends
GROUP BY id
ORDER BY num DESC
Limit 1
