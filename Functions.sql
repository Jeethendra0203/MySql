USE startersql;
-- Aggregate Functions
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender = 'Female';
SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
SELECT SUM(salary) AS total_payroll FROM users;
SELECT AVG(salary) AS avg_salary FROM users;
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

-- String Functions
SELECT name, LENGTH(name) AS name_lengt from users;
SELECT name, LOWER(name) AS lowercase_name FROM users;
SELECT name, UPPER(name) AS uppercase_name FROM users;
SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- Date Functions
SELECT NOW();
SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;
SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- Mathematical Functions

SELECT salary, ROUND(salary) AS rounded, FLOOR(salary) AS floored, CEIL(salary) AS ceiled FROM users;
SELECT id, MOD(id, 2) AS remainder FROM users;
-- Conditional Functions
SELECT name, gender, IF(gender = 'male', 'Yes', 'No') AS is_male FROM users;

select * from users;
select count(*) from users;
select count(*) from users where salary  > '60000';
select min(salary) as min_salary, max(salary) as max_salary from users;
select sum(salary) as total_payroll from users;
select avg(salary) as avg_salary from users;
select name, datediff(curdate(), date_of_birth) as days from users;