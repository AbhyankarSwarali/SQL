-- Segment all orders into 3 categories: High, Medium and Low sales
use salesdb;
select 
	*,
    case Buckets
		when 1 then 'High'
        when 2 then 'Medium'
        when 3 then 'Low'
	end Sales_Segmentation
from (
		select 
			OrderID, 
			ProductID, 
			Sales,
			ntile(3) over(order by Sales desc) as Buckets
		from orders) t;