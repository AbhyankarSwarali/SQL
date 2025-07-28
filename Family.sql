CREATE DATABASE family;
USE family;

CREATE TABLE members (
	id INT PRIMARY KEY NOT NULL,
    name VARCHAR(20),
    age INT NOT NULL
);

INSERT INTO members
(id, name, age)
VALUES
(1, 'Swarali', 22),
(2, 'Anuj', 22),
(3, 'Aman', 24),
(4, 'Anubhav', 20);

SELECT * FROM members;

UPDATE members
SET age = 23
WHERE id = 2;