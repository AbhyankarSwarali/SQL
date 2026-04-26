SELECT 
    OrderID,
    CreationTime,
    YEAR(CreationTime) AS create_year,
    MONTH(CreationTIme) AS create_month,
    DAY(CreationTime) AS create_day
FROM
    orders;