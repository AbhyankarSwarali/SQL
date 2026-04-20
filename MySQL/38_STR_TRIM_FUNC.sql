-- Find customers whose first name contains leading or trailing spaces
SELECT 
    first_name,
    LENGTH(first_name) AS len_first_name,
    LENGTH(TRIM(first_name)) as trim_len,
    length(first_name) - length(trim(first_name)) flag
FROM
    customers
where length(first_name) != length(trim(first_name));