-- Find the lowest sales for each product
use salesdb;
select
	OrderID,
    ProductID,
    Sales,
    first_value(Sales) over(partition by ProductID order by Sales) as lowest_sales
from orders;

-- Find the highest sales using first_value function
select
	OrderID,
    ProductID,
    Sales,
    first_value(Sales) over(partition by ProductID order by Sales desc) as highest_sales
from orders;

-- Find the difference between the current and the lowest sales
select
	OrderID,
    ProductID,
    Sales,
    first_value(Sales) over(partition by ProductID order by Sales) as lowest_sales,
    Sales - first_value(Sales) over(partition by ProductID order by Sales) as sales_difference
from orders;