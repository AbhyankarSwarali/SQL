-- Identify the customers who have no scores
use salesdb;
select * from customers where Score is null;

-- List all customers who have scores
select * from customers where Score is not null;