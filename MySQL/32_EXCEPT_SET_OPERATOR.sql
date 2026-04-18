-- Find employees who are customers at the same time
select e.FirstName, e.LastName from employees e
except 
select c.FirstName, c.LastName from customers c;