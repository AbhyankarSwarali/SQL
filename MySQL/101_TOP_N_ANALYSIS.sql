-- Find the top highest sales for each product
use salesdb;
select * from 
	(select
		OrderID,
		ProductID,
		Sales,
		row_number() over(partition by ProductID order by Sales desc) as Product_rank
	from orders) t
where Product_rank = 1;