use salesdb;
select * from orders;
select nullif(ShipAddress, BillAddress) from orders;