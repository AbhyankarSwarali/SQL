-- Concatenate first name and country into one column
use mydatabase;
SELECT 
    first_name,
    country,
    CONCAT(first_name, '_', country) AS name_countr
FROM
    customers;