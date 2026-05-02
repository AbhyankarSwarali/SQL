-- Time Gap Analysis
-- Find the number of days between each order and the previous order
use salesdb;

select 
	OrderID, 
    OrderDate, 
    datediff(OrderDate, lag(OrderDate) over (order by OrderDate)) as days_diff 
from orders;