-- Get all customers along with their orders, including orders without matching customers
select c.id, c.first_name, o.customer_id, o.sales 
from customers c
right join orders o
on c.id = o.customer_id;

select * from orders;