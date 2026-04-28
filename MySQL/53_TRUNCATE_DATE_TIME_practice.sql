SELECT 
    DATE_FORMAT(CreationTime, '%y-%m-01') AS month_wise,
    COUNT(*) as total_count
FROM
    orders
GROUP BY DATE_FORMAT(CreationTime, '%y-%m-01');