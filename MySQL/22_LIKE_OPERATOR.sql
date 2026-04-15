-- Find all customers whose first name starts with M
select * from customers where first_name like 'M%';

-- Find all customers whose first name ends with n
select * from customers where first_name like '%n';

-- Find all customers whose first name contains r
select * from customers where first_name like '%r%';

-- Find all customers whose first name has r in the third position
select * from customers where first_name like '__r%';