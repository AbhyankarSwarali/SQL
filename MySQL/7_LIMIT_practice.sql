use mydatabase;

-- 7. LIMIT
-- Retrieve only 3 customers
select * from customers LIMIT 3;

-- Retrieve top 3 customers with highest sscores
select * from customers order by score desc limit 3;

-- Retrieve the lowest 2 customers based on the score
select * from customers order by score limit 2;

-- Get the 2 most recent orders
select * from orders order by order_date desc limit 2;
