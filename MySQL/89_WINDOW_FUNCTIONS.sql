-- Find the total sales accross all orders, additionally provide details like OrderID and OrderDate
select OrderID, OrderDate, sum(Sales) over() as total_sales from orders;

-- Find the total sales for each product, additionally provide details like OrderID and OrderDate
use salesdb;
select OrderId, OrderDate, ProductID, 
	   sum(Sales) over(partition by ProductID) as total_sales_by_product 
       from orders;
       
-- Find the total sales for each combination of product and order status
select OrderID, OrderDate, ProductID, OrderStatus, 
	   sum(Sales) over(partition by ProductID, OrderStatus) as TotalSalesProdStatus 
from orders;

-- Rank each order based on their sales from highest to lowest
use salesdb;
select OrderID, OrderDate, Sales, rank() over(order by Sales desc) as rank_sales from orders;

-- Find the total sales for each order status only for two products 101 and 102
use salesdb;
select OrderID, OrderDate, OrderStatus, 
	   ProductID, Sales, 
       sum(Sales) over(partition by OrderStatus) as total_sales 
from orders 
where ProductID in (101, 102);

-- Rank customers based on their total sales
use salesdb;
select CustomerID, 
	   sum(Sales) as total_sales, 
       rank() over(order by sum(Sales) desc) as Cust_rank
from orders group by CustomerID;