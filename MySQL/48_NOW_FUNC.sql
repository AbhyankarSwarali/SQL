use salesdb;

select OrderID, OrderDate, CreationTime, now() as Today from orders;