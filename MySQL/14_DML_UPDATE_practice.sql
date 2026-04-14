-- Change the score of the customer with ID 6 to 0
select * from customers;
update customers set score = 0 where id = 6;

-- Change the score of the customer with ID 10 to 0 and update the country to UK
UPDATE customers 
SET 
    score = 0,
    country = 'UK'
WHERE
    id = 10;

-- SET SQL_SAFE_UPDATES = 0;

-- Update all customers with a null score by setting their score to 0
update customers set score = 0 where score is null;

