-- Analyze month-over-month (MoM) performance by finding the percentage change in sales 
-- between the current and next month
use salesdb;
select
	*,
    next_month_sales - current_month_sales as MoM_change,
    concat(round((next_month_sales - current_month_sales) / current_month_sales * 100, 2), '%') as MoM_persent_change
from (
		select 
			month(OrderDate) as OrderMonth,
			sum(Sales) as current_month_sales,
			lead(sum(Sales)) over(order by month(OrderDate)) as next_month_sales
		from orders
		group by month(OrderDate)) t;