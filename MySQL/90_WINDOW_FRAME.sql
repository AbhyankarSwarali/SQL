use salesdb;
select OrderID, OrderDate, OrderStatus, Sales,
	   sum(Sales) over(partition by OrderStatus order by OrderDate 
					   rows between current row and 2 following) as total_sales 
from orders;