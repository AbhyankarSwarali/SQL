-- Rank the orders based on their sales from highest to lowest
use salesdb;
select
	ProductID,
    OrderID,
    Sales,
    dense_rank() over(order by Sales desc) as sales_dense_rank
from orders;