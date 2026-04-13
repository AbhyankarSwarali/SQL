-- Copy data from customers table into persons table
insert into persons (id, person_name, birth_date, phone)
select id, first_name, null, 'Unknown' from customers;

select * from persons;
