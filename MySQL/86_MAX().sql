-- Find the highest sales
use salesdb;
select max(Sales) as highest_sales from orders;