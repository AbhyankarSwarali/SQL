-- Get all customers along with their orders, but only for customers who have placed an order
select * from orders;
select * from customers;

SELECT c.id, first_name, o.order_id, sales
FROM customers c
INNER JOIN orders o ON c.id = o.customer_id;