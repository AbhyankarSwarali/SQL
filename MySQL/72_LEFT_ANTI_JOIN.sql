-- List all customers who have not placed any orders
SELECT 
    c.*, o.OrderID
FROM
    customers c
        LEFT JOIN
    orders o ON c.CustomerID = o.CustomerID
WHERE
    o.CustomerID IS NULL;