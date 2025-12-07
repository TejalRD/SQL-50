# Write your MySQL query statement below
SELECT (SELECT DISTINCT salary 
FROM Employee 
ORDER BY salary DESC
LIMIT 1 OFFSET 1) as SecondHighestSalary 


-- LIMIT 1 OFFSET 1 skips the first row (highest salary) and returns the next one