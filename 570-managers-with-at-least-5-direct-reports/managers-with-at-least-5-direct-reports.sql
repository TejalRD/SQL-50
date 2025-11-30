# Write your MySQL query statement below
Select e1.name from Employee e1
LEFT join Employee e2 
ON e1.id = e2.managerId
GROUP BY e1.Id,e1.name
HAVING COUNT(e2.managerId)>=5

#join condition-> Give me all pairs where the manager’s id = employee’s managerId
-- order of execution:
-- 1. FROM
-- 2. JOIN
-- 3. WHERE
-- 4. GROUP BY
-- 5. HAVING
-- 6. SELECT
-- 7. ORDER BY
-- 8. LIMIT 