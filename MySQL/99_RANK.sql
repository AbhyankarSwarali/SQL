-- Rank the orders based on their sales from highest to lowest
use salesdb;
select
	OrderID, 
    ProductID, 
    Sales, 
    rank() over(order by Sales desc) as sales_rank
from orders;