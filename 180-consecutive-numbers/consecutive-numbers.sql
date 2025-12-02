# Write your MySQL query statement below
SELECT DISTINCT l.num AS ConsecutiveNums 
FROM Logs l JOIN Logs l1
ON l.id +1 = l1.id AND l.num= l1.num
JOIN Logs l2
ON l1.id+1 = l2.id AND l1.num = l2.num