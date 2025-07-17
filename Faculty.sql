create database sci_fac;
use sci_fac;

create table faculty (
  f_id varchar(10) primary key not null,
  f_name varchar(30),
  f_age int
  check (f_age >= 25),
  f_dept varchar (25) not null,
  f_exp int default 0
  );
  
insert into faculty (f_id, f_name, f_age, f_dept, f_exp) values
('P01', 'Abhishek', 32, 'Physics', 3),
('M03', 'Shobha', 45, 'Mathematics', 9),
('S04', 'Maulik', 29, 'Statistics', 2),
('CH02', 'SHreyas', 42, 'Chemistry', 3);

insert into faculty (f_id, f_name, f_age, f_dept) values
('P02', 'Priya', 27, 'Physics'),
('S01', 'Jitendra', 30, 'Statistics');

select * from faculty;

select * from faculty where f_exp>=2;