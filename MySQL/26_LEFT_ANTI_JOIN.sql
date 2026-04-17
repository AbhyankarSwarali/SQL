-- Get all customers who haven't placed any order
select * from customers c
left join orders o
on c.id = o.customer_id
where o.customer_id is null;