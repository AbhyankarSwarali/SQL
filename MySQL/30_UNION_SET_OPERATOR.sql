-- Combine the data from employees and customers into one table
use salesdb;
SELECT 
    e.FirstName, e.LastName
FROM
    employees e 
UNION SELECT 
    c.FirstName, c.LastName
FROM
    customers c;