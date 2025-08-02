CREATE DATABASE commands;
USE commands;

CREATE TABLE details (
	name VARCHAR(50),
    marks INT NOT NULL,
    city VARCHAR(20)
);

INSERT INTO details
(name, marks, city)
VALUES
('Ajay', 56, 'Ahmedabad'),
('Bella', 94, 'Vadodara'),
('Chirag', 72, 'Surat'),
('Dev', 83, 'Gir');

SELECT * FROM details WHERE marks > 80 and city = 'Vadodara';
SELECT * FROM details WHERE city IN ('Gandhunagar', 'Surat');

select * FROM details LIMIT 3;
select * FROM details WHERE marks > 80 LIMIT 3;

select * from details order by city ASC;
select * from details order by name ASC;
select * from details order by marks DESC;
select * from details order by marks DESC limit 3;

select max(marks) from details;
select AVG(marks) from details;
select count(name) from details;

select city, avg(marks)
from details
group by city;

