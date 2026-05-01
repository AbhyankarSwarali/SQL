use salesdb;

SELECT 
    OrderID,
    OrderDate,
    date_add(OrderDate, interval -10 day) as 10_days_earlier,
    date_add(OrderDate, interval -10 day) as 10_days_earlier,
    DATE_ADD(OrderDate, INTERVAL 2 YEAR) AS 2_Years_Later,
    date_add(OrderDate, interval 3 month) as 3_Months_Later
FROM
    orders;