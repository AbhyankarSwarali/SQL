use salesdb;
select
	OrderID,
    ProductID, 
    OrderDate,
    Sales,
    sum(Sales) over(order by OrderID rows between 2 preceding and current row) as rolling_total
from orders;