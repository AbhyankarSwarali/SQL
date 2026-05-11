-- Find the highest and the slowest sales across all orders and for each product
use salesdb;
select 
	OrderID, 
    ProductID, 
    Sales,
    min(Sales) over() as min_order,
    max(Sales) over() as max_order,
    min(Sales) over(partition by ProductID) as min_prod_sale,
    max(Sales) over(partition by ProductID) as max_prod_sale
from orders;

-- Find the employees with highest salary
select * from 
	(select 
		*,max(Salary) over() as max_salary
	 from employees) t 
where Salary = max_salary;

-- Find the deviation of each sale from minimum and maximum sales amount
select
	OrderId,
    ProductID,
    Sales,
    min(Sales) over() as min_sale,
    max(Sales) over() as max_sale,
    Sales - min(Sales) over() as min_deviation,
    max(Sales) over() - Sales as max_deviation
from orders;