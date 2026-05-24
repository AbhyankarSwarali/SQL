-- In order to analyze customer loyalty, rank customers based on the average days between their orders
use salesdb;
select
	CustomerID, 
    avg(days_until_next_order) as avg_days_bet_orders,
    rank() over(order by coalesce(avg(days_until_next_order), 999999)) as rank_order
from (
		select 
			OrderID, 
			CustomerID,
			OrderDate as current_order,
			lead(OrderDate) over(partition by CustomerID order by OrderDate) as next_order,
			datediff(lead(OrderDate) over(partition by CustomerID order by OrderDate), OrderDate) as days_until_next_order
		from orders
		order by CustomerID, OrderDate) t
group by CustomerID;