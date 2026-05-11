use salesdb;
select 
	OrderID, 
	ProductID,
	OrderDate, 
	Sales, 
	sum(Sales) over(order by OrderID) as running_total
from orders;