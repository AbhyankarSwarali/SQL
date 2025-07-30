CREATE DATABASE joins;
USE joins;

CREATE TABLE student (
	student_id INT PRIMARY KEY NOT NULL,
    Name VARCHAR(50)
);

SELECT * FROM student;

INSERT INTO student
VALUES
(101, 'Adam'),
(102, 'Bob'),
(103,'Casey');

CREATE TABLE course (
	student_id INT PRIMARY KEY NOT NULL,
    course VARCHAR(25)
);

INSERT INTO course
VALUES
(102, 'English'),
(105, 'Maths'),
(103,' Science'),
(107, 'Computer Science');

SELECT * FROM course;

SELECT *
FROM student as s
INNER JOIN course as c
ON s.student_id = c.student_id;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id;

SELECT * FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
UNION
SELECT * FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id; 

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL;

SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

SELECT *
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id
WHERE c.student_id IS NULL
UNION
SELECT *
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_id
WHERE s.student_id IS NULL;

CREATE TABLE employee (
	id INT PRIMARY KEY NOT NULL,
    name varchar(50),
    manager_id INT
);

INSERT INTO employee
VALUES
(101, 'Adam', 103),
(102, 'Bob', 104),
(103, 'Casey', null),
(104, 'Donald', 103);

SELECT a.name as manager_name, b.name 
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT name FROM employee
UNION 
SELECT course FROM course;

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;