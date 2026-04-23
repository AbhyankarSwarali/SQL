-- Retrieve the first 2 characters of each first name
SELECT 
    first_name, LEFT(trim(first_name), 2) AS first_2_char_name
FROM
    customers;