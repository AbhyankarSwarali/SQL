-- Analyze month-over-month (MoM) performance by finding the percentage change in sales 
-- between the current and previous month
use salesdb;
select 
	*,
    current_month_sales - prev_month_sales as MoM_change,
    concat(round((current_month_sales - prev_month_sales) / prev_month_sales * 100, 2), '%') as MoM_percent_change
from 
	(select 
		month(OrderDate) as OrderMonth, 
		sum(Sales) as current_month_sales,
		lag(sum(Sales)) over(order by month(OrderDate)) as prev_month_sales
from orders
group by month(OrderDate)) t;