-- Find the average sales across all orders and the average sales for each product
use salesdb;
select OrderID, ProductID, Sales, 
	   avg(Sales) over() as avg_sales,
       avg(Sales) over(partition by ProductID) as avg_sales_prod
from orders;

-- Find average scores of customers and provide their Customer Id and last name
select 
CustomerID, 
	coalesce(LastName, 'unknown') as LastName, 
	Score, coalesce(Score, 0) as clean_score, 
	avg(coalesce(Score, 0)) over() as cust_avg_score 
from customers;

-- Find all orders where sales are higher than the average sales across all orders
select * from (
	select 
		OrderID, 
		ProductID, 
		Sales,
		avg(Sales) over() as avg_sales
	from orders) as t
where Sales > avg_sales;