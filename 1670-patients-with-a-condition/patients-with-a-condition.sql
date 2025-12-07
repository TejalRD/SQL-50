# Write your MySQL query statement below
SELECT * FROM Patients 
WHERE conditions REGEXP '(^| )DIAB1'


-- (^| )DIAB1 - start of string, or a space before DIAB1