-- In order to export the data, divide the orders table into 4 groups
use salesdb;
select 
	ntile(4) over(order by OrderID) as Buckets,
    o.*
from orders o;