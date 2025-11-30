# Write your MySQL query statement below
SELECT EUNI.UNIQUE_ID, E.NAME FROM Employees E LEFT JOIN EmployeeUNI EUNI ON E.ID=EUNI.ID

#Using onlly join will keep rows that match in both tables. 
#left join keeps all rows of left table and returns null if no matching rows are found in right table