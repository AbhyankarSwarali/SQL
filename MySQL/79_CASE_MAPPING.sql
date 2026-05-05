-- Retrieve all employee details with gender displayed as full text
use salesdb;
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    Gender,
    CASE
        WHEN Gender = 'M' THEN 'Male'
        WHEN Gender = 'F' THEN 'Female'
        ELSE 'Not available'
    END as FullGender
FROM
    employees;
    
-- Retrieve customer details with abbreviated country code
select distinct Country from customers;
SELECT 
    CustomerID,
    FirstName,
    LastName,
    Country,
    CASE
        WHEN Country = 'Germany' THEN 'Ge'
        WHEN Country = 'USA' THEN 'US'
        ELSE 'Unknown'
    END AS abbrev_country
FROM
    customers;