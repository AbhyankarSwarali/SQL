-- Generate a report showing the total sales for each category: High (sales > 50), Medium (sales 21-50),
-- Low (sales <= 20). Sort the result from highest to lowest
use salesdb;
SELECT Category, SUM(Sales) AS total_sales
FROM
    (SELECT OrderID, Sales,
            CASE
                WHEN Sales > 50 THEN 'High'
                WHEN Sales BETWEEN 21 AND 50 THEN 'Medium'
                ELSE 'Low'
            END AS Category
    FROM orders) t 
GROUP BY Category
order by total_sales desc;