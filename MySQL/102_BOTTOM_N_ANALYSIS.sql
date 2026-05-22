-- Find the lowest 2 customers based on thier total sales
use salesdb;
select 
    CustomerID,
    sum(Sales) as total_sales,
    row_number() over(order by sum(Sales)) as RankCustomers
from orders group by CustomerID limit 2;