use salesdb;
select
	OrderID,
    Sales,
    ntile(1) over (order by Sales desc) as bucket_1,
    ntile(2) over (order by Sales desc) as bucket_2,
    ntile(3) over (order by Sales desc) as bucket_3
from orders;