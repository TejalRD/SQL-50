# Write your MySQL query statement below
SELECT p.product_id, COALESCE(latest.new_price,10)as price
FROM 
    (SELECT DISTINCT product_id from Products) p
    LEFT JOIN (
        SELECT product_id, new_price FROM PRODUCTS 
        WHERE (product_id, change_date) IN
        (
            SELECT product_id, MAX(change_date) from PRODUCTS
            WHERE change_date <='2019-08-16'
            GROUP BY product_id
        )
    ) latest 
    ON p.product_id = latest.product_id
