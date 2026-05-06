-- Find the total sales of orders
use salesdb;
select sum(Sales) as total_sales from orders;