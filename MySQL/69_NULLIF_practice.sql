-- Find the sales price for each order by dividing sales by quantity
use salesdb;
select * from orders;
select OrderID, Quantity, Sales, Sales/nullif(Quantity, 0) as Price from orders;