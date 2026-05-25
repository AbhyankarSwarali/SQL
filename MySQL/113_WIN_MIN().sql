-- Find the lowest sales for each product
use salesdb;
select
	OrderID,
    ProductID,
    Sales,
    min(Sales) over(partition by ProductID) as lowest_sales
from orders;