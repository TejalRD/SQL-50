# Write your MySQL query statement below
SELECT user_id, CONCAT(UPPER(LEFT(name,1)), LOWER(SUBSTRING(name,2))) as name
FROM Users
ORDER BY user_id 

-- LEFT(name, 1)	Extracts the first character
-- UPPER(...)	Converts the first character to uppercase
-- SUBSTRING(name, 2)	Remaining characters starting from position 2
-- LOWER(...)	Converts the rest to lowercase
-- CONCAT(...)	Joins them back together