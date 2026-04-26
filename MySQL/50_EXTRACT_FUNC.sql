SELECT 
    CreationTime,
    EXTRACT(YEAR FROM CreationTime) AS Year,
    EXTRACT(MONTH FROM CreationTime) Month,
    EXTRACT(DAY FROM CreationTime) AS Day,
    EXTRACT(HOUR FROM CreationTime) AS Hour,
    EXTRACT(MINUTE FROM CreationTime) AS Minutes,
    EXTRACT(SECOND FROM CreationTime) AS Seconds
FROM
    orders;