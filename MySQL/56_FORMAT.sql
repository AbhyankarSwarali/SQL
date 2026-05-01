use salesdb;

SELECT 
    OrderID, 
    CreationTime, 
    DATE_FORMAT(CreationTime, '%d') AS day_num,
    date_format(CreationTime, '%a') as day_letter,
    date_format(CreationTime, '%W') as full_day,
    date_format(CreationTime, '%D %b %Y') as example
FROM
    orders;
