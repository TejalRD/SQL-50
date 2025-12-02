# Write your MySQL query statement below
SELECT e.employee_id, e.department_id 
FROM Employee e where e.primary_flag = 'Y'
UNION
SELECT employee_id, department_id from Employee
WHERE employee_id IN (
    SELECT employee_id from Employee
    GROUP BY employee_id
    HAVING COUNT(*) = 1
)