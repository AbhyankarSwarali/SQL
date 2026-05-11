-- Find the total sales for each product
use salesdb;
select 
	o.ProductID, p.Product, o.Sales, 
    sum(Sales) over(partition by ProductID) as prod_sales 
from orders o
left join products p
on o.ProductID = p.ProductID;

-- Find the percentage contribution of each product's sales to the total sales
select OrderID, ProductID, Sales, 
	sum(Sales) over() as total_sales,
    round(Sales / sum(Sales) over() * 100, 2) as percent_total
from orders
order by percent_total desc;