SELECT 
    CreationTime,
    MONTHNAME(CreationTime) AS Month,
    DAYNAME(CreationTime) AS Day
FROM
    orders;