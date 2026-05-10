-- Find the lowest sales
use salesdb;
select min(Sales) as lowest_sale from orders;