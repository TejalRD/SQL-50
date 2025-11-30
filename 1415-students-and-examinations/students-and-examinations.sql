# Write your MySQL query statement below
SELECT S.student_id, S.student_NAME, SUB.subject_name, COUNT(E.subject_name) AS attended_exams 
FROM Students S 
CROSS JOIN Subjects sub
LEFT JOIN Examinations E
ON e.student_id = s.student_id
AND e.subject_name = sub.subject_name
GROUP BY S.student_id, S.student_NAME, SUB.subject_name
ORDER BY S.student_id, SUB.subject_name

#cross join -> every row from table A × every row from table B, no ON required for cross join