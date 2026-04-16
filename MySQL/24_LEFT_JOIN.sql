-- Get all customers along with their orders, including those without orders
select c.id, c.first_name, o.order_id, o.sales
from customers c
left join orders o
on c.id = o.customer_id;