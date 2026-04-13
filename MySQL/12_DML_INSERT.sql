use mydatabase;

insert into customers(id, first_name, country, score)
values 
	(6, 'Anna', 'USA', null),
    (7, 'Sam', null, 100);

insert into customers
values 
	(8, 'Max', 'Canada', 650);
    
    
insert into customers (id, first_name)
values
	(9, 'Andrea'),
    (10, 'Sahra');
    
select * from customers;