use mydatabase;

-- 6. DISTINCT
-- Return unique list of all countries
select distinct country from customers;

-- Find customers with unique countries with score greater than 500
select distinct country, first_name, score from customers where score > 500;