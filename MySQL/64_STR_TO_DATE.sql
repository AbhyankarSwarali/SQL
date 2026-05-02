use salesdb;

SELECT STR_TO_DATE('2026-04-30', '%Y-%m-%d') AS result
union
SELECT 
    CASE 
        WHEN STR_TO_DATE('2026-03-30', '%Y-%m-%d') IS NULL 
        THEN 'Invalid Date'
        ELSE 'Valid Date'
    END AS status;
    
SELECT 
    OrderDate,
    CASE 
        WHEN STR_TO_DATE(OrderDate, '%Y-%m-%d') IS NULL 
        THEN 'Invalid'
        ELSE 'Valid'
    END AS status
FROM orders;