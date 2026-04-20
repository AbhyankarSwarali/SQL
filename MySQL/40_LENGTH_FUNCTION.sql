-- Claculate the length of each customers first name
SELECT 
    first_name, LENGTH(first_name) AS len_name
FROM
    customers;