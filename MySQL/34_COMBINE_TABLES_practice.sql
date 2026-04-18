-- Orders are stored in separate tables (Orders and OrdersArchive). Combine all orders into one report without duplicates
SELECT 
'Orders' as SourceTable,
    o.OrderID,
    o.ProductID,
    o.CustomerID,
    o.SalesPersonID,
    o.OrderDate,
    o.ShipDate,
    o.OrderStatus,
    o.ShipAddress,
    o.BillAddress,
    o.Quantity,
    o.Sales,
    o.CreationTime
FROM
    orders o 
UNION SELECT 
'OrdersArchive' as SourceTable,
    oa.OrderID,
    oa.ProductID,
    oa.CustomerID,
    oa.SalesPersonID,
    oa.OrderDate,
    oa.ShipDate,
    oa.OrderStatus,
    oa.ShipAddress,
    oa.BillAddress,
    oa.Quantity,
    oa.Sales,
    oa.CreationTime
FROM
    ordersarchive oa
order by OrderID;