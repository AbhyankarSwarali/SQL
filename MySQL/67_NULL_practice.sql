-- Find the average score of the customers
use salesdb;
select * from customers;
SELECT 
	CustomerID,
    Score,
    coalesce(Score) as consec_score_sum,
    AVG(Score) over () AS avg_score_1,
    avg(coalesce(Score, 0)) over() as avg_score_2
FROM
    customers;
    
-- Display the full name of customers in a single field by merging their first name and last name
-- and add 10 bonus points to each customers score
use salesdb;
select * from customers;
SELECT 
    CustomerID,
    FirstName,
    LastName,
    CONCAT(FirstName, ' ', COALESCE(LastName, 'unknown')) AS full_name,
    Score,
    coalesce(Score, 0) + 10 as bonus_score
FROM
    customers;
    
-- Sort the customers from lowest to highest scores with null values appearing last
select CustomerID, Score, coalesce(Score, 999999) Score_asc from customers order by coalesce(Score, 999999);
SELECT 
    CustomerID,
    Score
FROM customers
ORDER BY CASE
    WHEN Score IS NULL THEN 1
    ELSE 0
END , Score;