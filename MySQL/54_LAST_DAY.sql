SELECT 
    OrderID,
    CreationTime,
    LAST_DAY(CreationTime) AS Last_day_of_month
FROM
    orders;