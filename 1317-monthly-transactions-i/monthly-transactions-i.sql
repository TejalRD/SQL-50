# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date, '%Y-%m') as month,
country, COUNT(*) AS trans_count,
SUM(state='approved') as approved_count,
SUM(amount) as trans_total_amount, 
SUM(CASE WHEN state='approved' THEN amount ELSE 0 END) as approved_total_amount
FROM Transactions 
GROUP BY month,country

-- %Y = 4-digit year (2018, 2019)
-- %m = 2-digit numeric month (01–12)
-- %M = full month name