use mydatabase;

-- 2. WHERE
-- Retrieve customers with a score not equal to 0
select * from customers where score != 0;

-- Retrieve customers from Germany
select * from customers where country = 'Germany';

-- Retreive name and score of the customers whose score is greater than or equal to 500
select first_name, score from customers where score >= 500;