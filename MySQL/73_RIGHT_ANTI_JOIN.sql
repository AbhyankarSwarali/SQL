-- List all orders where the customer doesn't have a last name
SELECT 
    o.OrderID, o.ProductID, c.CustomerID, c.FirstName, c.Country, c.LastName
FROM
    orders o
        RIGHT JOIN
    customers c ON c.CustomerID = o.CustomerID
WHERE
    c.LastName IS NULL;