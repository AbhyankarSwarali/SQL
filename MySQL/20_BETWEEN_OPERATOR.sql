-- Retrieve all customers whose score fall between range 100 and 500
select * from customers where score between 100 and 500;

select * from customers where score >= 100 and score <= 500;