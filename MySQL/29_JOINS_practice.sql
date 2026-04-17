-- Using SalesDB, retrieve a list of all orders, along with the related customer, product, and employee details
use salesdb;
show tables;

SELECT 
    o.OrderID,
    o.Sales,
    c.FirstName as Cust_first_name,
    c.LastName as Cust_last_name,
    p.Product,
    p.Price,
    e.FirstName as Emp_first_name,
    e.LastName as Emp_last_name
FROM
    orders o
        LEFT JOIN
    customers AS c ON o.CustomerID = c.CustomerID
        LEFT JOIN
    products p ON o.ProductID = p.ProductID
        LEFT JOIN
    employees e ON o.SalesPersonID = e.EmployeeID;

select * from orders;