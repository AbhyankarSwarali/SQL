-- Find the total salaes across all orders
use salesdb;
select sum(Sales) as total_sales from orders;

-- Find the total sales for each product
use salesdb;
select ProductID, sum(Sales) as product_sales from orders group by ProductID;