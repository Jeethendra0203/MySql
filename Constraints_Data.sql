CREATE DATABASE Constraintsql;
use Constraintsql;
CREATE TABLE cons (
id INT PRIMARY KEY,
 name VARCHAR(100) NOT NULL
);
select * from cons;
 INSERT INTO cons (id, name) VALUES
 (3, '');
ALTER TABLE cons ADD CONSTRAINT unique_email UNIQUE (email);
ALTER TABLE cons MODIFY COLUMN name VARCHAR(100) not NULL;
drop table cons;
SELECT SUM(salary) AS total_payroll FROM users;
SELECT AVG(salary) AS avg_salary FROM users;
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'Female';
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;
SELECT name, LENGTH(name) AS name_length FROM users;