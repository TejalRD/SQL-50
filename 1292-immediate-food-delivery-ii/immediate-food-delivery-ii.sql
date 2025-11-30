# Write your MySQL query statement below
SELECT ROUND(SUM(first_order_is_imm)*100.0/COUNT(*),2) as immediate_percentage 
FROM (
    SELECT customer_id,
    CASE WHEN order_date = customer_pref_delivery_date THEN 1
    ELSE 0 END
    as first_order_is_imm
    FROM Delivery 
    WHERE (customer_id,order_date) 
    IN(
        SELECT customer_id, MIN(order_date)
        FROM Delivery GROUP BY customer_id
    )
) as first_orders

