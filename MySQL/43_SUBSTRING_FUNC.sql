-- Retrieve  a list of customers; first names removing the first character
SELECT 
    first_name,
    SUBSTRING(TRIM(first_name), 2, LENGTH(first_name)) AS sub_name
FROM
    customers;