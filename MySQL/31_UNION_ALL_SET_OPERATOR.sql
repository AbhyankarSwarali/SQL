--  Combine the data from employees and customers into one table including duplicates
select e.FirstName, e.LastName from employees e
union all
select c.FirstName, c.LastName from customers c;