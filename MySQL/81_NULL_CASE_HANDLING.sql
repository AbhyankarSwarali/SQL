-- Find the average scores of customers and treate nulls as 0
-- Additionally provide  details such as CustomerID and LastName
use salesdb;
select CustomerID, LastName, Score, 
case 
	when Score is null then 0 
	else Score 
end as clean_score, 
avg(case 
		when Score is null then 0 
		else Score 
    end) over() as avg_clean_score,
avg(Score) over() as avg_score
from customers;