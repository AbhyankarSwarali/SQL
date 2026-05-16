-- Calculate the moving average of sales for each product over time
use salesdb;
select
	OrderID,
    ProductID, 
    OrderDate,
    Sales,
    avg(Sales) over(partition by ProductID) as avg_by_prod,
    avg(Sales) over(partition by ProductID order by OrderDate) as moving_average
from orders;

-- Calculate the moving average of sales for each product over time, including only the next order
select
	OrderID,
    ProductID,
    OrderDate,
    Sales,
    avg(Sales) over(partition by ProductID order by OrderDate rows between current row and 1 following) as rolling_avg
from orders;