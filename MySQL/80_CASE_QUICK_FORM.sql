-- Retrieve customer details with abbreviated country code
use salesdb;
SELECT 
    CustomerID,
    FirstName,
    LastName,
    Country,
    CASE Country
        WHEN 'Germany' THEN 'Ge'
        WHEN 'USA' THEN 'US'
    END AS abbrev_country
FROM customers;