CREATE DATABASE sub_queries;
USE sub_queries;

CREATE TABLE stud_queries(
	rollno INT PRIMARY KEY NOT NULL,
    name VARCHAR(25),
    marks INT,
    city VARCHAR(20)
);

INSERT INTO stud_queries 
Values
(101, 'Anil', 78, 'Pune'),
(102, 'Bhumika', 93, 'Mumbai'),
(103, 'Chetan', 85, 'Mumbai'),
(104, 'Dhruv', 96, 'Delhi'),
(105, 'Emanual', 92, 'Delhi'),
(106, 'Farah', 82, 'Delhi');

SELECT name, marks
FROM stud_queries
WHERE marks > 
(SELECT AVG(marks) FROM stud_queries);

SELECT name, rollno
FROM stud_queries
WHERE rollno IN 
(SELECT rollno FROM stud_queries WHERE rollno % 2 = 0);

SELECT MAX(marks)
FROM (SELECT * FROM stud_queries WHERE city = 'Delhi') AS temp;

SELECT (SELECT marks FROM stud_queries), name
FROM stud_queries;

CREATE VIEW view1 AS
SELECT rollno, name, marks FROM stud_queries;

SELECT * FROM view1
WHERE marks >= 90;

DROP VIEW view1;