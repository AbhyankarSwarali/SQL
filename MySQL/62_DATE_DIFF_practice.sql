-- Find the average shipping duration in days for each month
use salesdb;

SELECT 
    MONTH(OrderDate) AS OrderDate,
    AVG(DATEDIFF(ShipDate, OrderDate)) AS shipping_duration
FROM
    orders
GROUP BY MONTH(OrderDate);