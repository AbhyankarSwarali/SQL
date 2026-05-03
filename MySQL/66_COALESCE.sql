use salesdb;
SELECT 
    COALESCE(ShipAddress, BillAddress, 'N/A') AS null_list
FROM
    orders;