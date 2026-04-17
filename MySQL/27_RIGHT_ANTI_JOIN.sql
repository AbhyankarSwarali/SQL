-- Get all orders without matching customers
select * from customers c
right join orders o
on c.id = o.customer_id
where c.id is null;