-- Count how many times each customers has made an order with sales greater than 30
use salesdb;
SELECT 
    CustomerID,
    SUM(CASE
        WHEN Sales > 30 THEN 1
        ELSE 0
    END) Total_high_orders,
    COUNT(*) AS total_orders
FROM
    orders
GROUP BY CustomerID;