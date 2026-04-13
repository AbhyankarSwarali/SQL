-- Add a new column email to the persons table
alter table persons add email varchar(50) not null;
select * from persons;

-- Move the email column and place it after the person_name column
alter table persons
modify column email varchar(50) after person_name;
select * from persons;

-- Remove the column phone from the persons table
alter table persons drop column phone;
select * from persons;