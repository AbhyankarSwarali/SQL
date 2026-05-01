-- Show CreationTime using the following format:
-- Day Wed Jan Q1 2025 12:34:56 PM

use salesdb;

SELECT 
    OrderID,
    CreationTime,
    CONCAT('Day ', DATE_FORMAT(CreationTime, '%a %b '), 'Q', 
    quarter(CreationTime), date_format(CreationTime, ' %Y %h:%i:%s %p')) 
    AS custom_type
FROM
    orders;