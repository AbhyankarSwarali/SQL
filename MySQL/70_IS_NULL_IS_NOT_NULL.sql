use salesdb;
select * from orders;
SELECT 
    OrderID,
    ShipAddress IS NULL AS is_null,
    BillAddress IS NOT NULL AS is_not_null
FROM
    orders;
    
select * from orders where BillAddress is not null;