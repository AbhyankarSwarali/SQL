-- Find the total number of sales for each product
use salesdb;
select ProductID, Sales, count(Sales) over (partition by ProductID) as prod_count from orders;

-- Find the total number of orders for each product
select ProductID, Sales, count(*) over(partition by ProductID) as order_count from orders;

-- Find if there are any duplicates in OrdersArchive table
select * from 
	(select OrderID, 
     count(*) over(partition by OrderID) as check_dups 
     from ordersarchive) t 
where check_dups > 1;