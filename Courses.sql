CREATE DATABASE courses;
USE courses;

CREATE TABLE dept (
	id INT PRIMARY KEY,
    sub_name VARCHAR(20)
);

INSERT INTO dept
VALUES
(101, 'Maths'),
(102, 'Science'),
(103, 'English');

SELECT * FROM dept;

CREATE TABLE teacher (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO teacher
VALUES
(101, 'Adam', 102),
(102, 'Bob', 101),
(103, 'Casey', 103),
(104, 'Donald', 101),
(105, 'Eva', 102);

SELECT * FROM teacher;
TRUNCATE TABLE teacher;

ALTER TABLE teacher
ADD COLUMN age INT;

ALTER TABLE teacher
DROP COLUMN age;

ALTER TABLE dept
RENAME TO subjects;

ALTER TABLE subjects
CHANGE COLUMN id sub_code INT NOT NULL;

ALTER TABLE subjects
MODIFY sub_code INT;