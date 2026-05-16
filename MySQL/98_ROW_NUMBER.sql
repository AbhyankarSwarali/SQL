-- Rank the orders based on their sales from highest to lowest
use salesdb;
select 
	OrderID, 
	ProductID, 
    Sales,
    row_number() over(order by Sales desc) as row_number_rank
from orders;

-- Assign unique IDs to the rows of Orders Archive table
select 
	row_number() over(order by ProductID, OrderDate) as UniqueID,
	o.*
from ordersarchive o;

-- Identify the duplicate rows in the table Orders Archive and return a clean result without any duplicates
select * from
	(select
		row_number() over(partition by OrderID order by CreationTime desc) as rn,
		o.*
	from ordersarchive o) t
where rn = 1;