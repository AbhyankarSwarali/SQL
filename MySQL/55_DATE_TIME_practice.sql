-- How many orders were placed each year
SELECT 
    DATE_FORMAT(CreationTime, '%y-01-01') AS year_wise,
    count(*) as total_orders
FROM
    orders
GROUP BY DATE_FORMAT(CreationTime, '%y-01-01');


-- How many orders were placed each month
SELECT 
    DATE_FORMAT(CreationTime, '%y-%m-01') AS month_wise,
    count(*) as total_orders
FROM
    orders
GROUP BY DATE_FORMAT(CreationTime, '%y-%m-01');

SELECT 
    MONTHNAME(CreationTime) AS month_wise,
    COUNT(*) AS total_orders
FROM
    orders
GROUP BY MONTHNAME(CreationTime);

-- Show all orders that were placed during the month of February
select * from orders where monthname(OrderDate) = 'February';
select * from orders where month(ORderDate) = 2;
