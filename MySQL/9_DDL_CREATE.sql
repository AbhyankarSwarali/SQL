-- Create a new table called persons with columns: id, person_name, birth_date and phone
create table persons (
	id int,
    person_name varchar(20) not null,
    birth_date date,
    phone varchar(15) not null,
    constraint pk_persons primary key (id)
)

select * from persons;