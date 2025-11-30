# Write your MySQL query statement below
Select e1.name from Employee e1
LEFT join Employee e2 
ON e1.id = e2.managerId
GROUP BY e1.Id,e1.name
HAVING COUNT(e2.managerId)>=5
