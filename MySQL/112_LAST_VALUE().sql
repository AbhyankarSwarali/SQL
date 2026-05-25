-- Find the highest sales for each product
use salesdb;
select 
	OrderID,
    ProductId,
    Sales,
    last_value(Sales) over(partition by ProductID order by Sales 
    rows between current row and unbounded following) as highest_sales
from orders;