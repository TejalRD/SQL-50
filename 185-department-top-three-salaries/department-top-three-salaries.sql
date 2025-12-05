# Write your MySQL query statement below
WITH Ranked AS (
    SELECT
        e.id,
        e.name AS Employee,
        e.salary,
        e.departmentId,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId
            ORDER BY e.salary DESC
        ) AS salary_rank
    FROM Employee e
)
SELECT
    d.name AS Department,
    r.Employee,
    r.salary AS Salary
FROM Ranked r
JOIN Department d
    ON r.departmentId = d.id
WHERE r.salary_rank <= 3;


-- DENSE_RANK() assigns ranks based on unique values.