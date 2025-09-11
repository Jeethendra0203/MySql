-- CREATE DATABASE IF NOT EXISTS startersql;
-- USE startersql;

-- CREATE TABLE users (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     name VARCHAR(100) NOT NULL,
--     email VARCHAR(100) UNIQUE NOT NULL,
--     gender ENUM('Male', 'Female', 'Other'),
--     date_of_birth DATE,
--     salary DECIMAL(10, 2),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- 1- Insert Multiple Rows at Once

-- INSERT INTO users (name, email, gender, date_of_birth, salary) VALUES
-- ('Aarav', 'aarav@example.com', 'Male', '1995-05-14', 65000.00),
-- ('Ananya', 'ananya@example.com', 'Female', '1990-11-23', 72000.00),
-- ('Raj', 'raj@example.com', 'Male', '1988-02-17', 58000.00),
-- ('Sneha', 'sneha@example.com', 'Female', '2000-08-09', 50000.00),
-- ('Farhan', 'farhan@example.com', 'Male', '1993-12-30', 61000.00),
-- ('Priyanka', 'priyanka@example.com', 'Female', '1985-07-12', 84000.00),
-- ('Aisha', 'aisha@example.com', 'Female', '1997-03-25', 56000.00),
-- ('Aditya', 'aditya@example.com', 'Male', '1992-06-17', 69000.00),
-- ('Meera', 'meera@example.com', 'Female', '1989-09-05', 77000.00),
-- ('Ishaan', 'ishaan@example.com', 'Male', '2001-10-02', 45000.00),
-- ('Tanvi', 'tanvi@example.com', 'Female', '1994-04-18', 62000.00),
-- ('Rohan', 'rohan@example.com', 'Male', '1986-12-01', 75000.00),
-- ('Zoya', 'zoya@example.com', 'Female', '1998-01-15', 54000.00),
-- ('Karan', 'karan@example.com', 'Male', '1990-08-22', 68000.00),
-- ('Nikita', 'nikita@example.com', 'Female', '1987-03-10', 71000.00),
-- ('Manav', 'manav@example.com', 'Male', '1996-11-29', 61000.00),
-- ('Divya', 'divya@example.com', 'Female', '1991-02-28', 57000.00),
-- ('Harshit', 'harshit@example.com', 'Male', '1993-09-09', 65000.00),
-- ('Ritika', 'ritika@example.com', 'Female', '1999-05-05', 52000.00),
-- ('Imran', 'imran@example.com', 'Male', '1995-07-30', 63000.00),
-- ('Juhi', 'juhi@example.com', 'Female', '1992-10-14', 59000.00),
-- ('Tushar', 'tushar@example.com', 'Male', '1990-01-08', 73000.00),
-- ('Lata', 'lata@example.com', 'Female', '1984-11-11', 78000.00),
-- ('Yash', 'yash@example.com', 'Male', '1997-06-06', 64000.00),
-- ('Fatima', 'fatima@example.com', 'Female', '1993-03-03', 55000.00);

-- SELECT * FROM users; 	
    
-- 2- Querying Data in MySQL using SELECT

-- Greater Than / Less Than
	-- 	select * from users where date_of_birth < '1995-10-10';
-- BETWEEN
	-- 	SELECT * from users where date_of_birth BETWEEN '1990-10-10' AND '1999-10-10';
-- IN
	-- 	select * from users where gender in ('male', 'female'); 
-- AND
	-- 	select * from users where gender = 'male' and salary > 50000;
-- ORDER BY -- LIMIT
	-- 	select * from users where salary > 60000 order by created_at desc limit 5;
	-- 	select * from users order by salary desc ;
	-- 	select * from users where salary between 50000 and 70000;

-- 3- UPDATE - Modifying Existing Data

-- Update the salary of user with id = 3 to ₹70,000.
	-- 	UPDATE users SET salary = 75000 WHERE id = 3;
-- Change the name of the user with email raj@example.com to Raj kumar
	-- 	UPDATE users SET name = 'Raj kumar' WHERE email = 'raj@example.com';
-- Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
	-- 	UPDATE users set salary=salary + 10000 WHERE salary < 60000;
-- Set the gender of user Ishaan to Other .
	-- 	UPDATE users set gender= 'Other' WHERE name = 'Ishaan';

-- 4- DELETE - Removing Data from a Table

-- Example: Delete One Row
	--  DELETE from users where id= 20;
-- Delete All Rows (but keep table structure)
	-- 	DELETE FROM users;
-- deletes who's salary is less than 60000
	-- 	DELETE FROM users where salary < 60000; 
-- Drop the Entire Table (use with caution)
	-- 	DROP TABLE users;

-- 5- MySQL Constraints

-- UNIQUE Constraint
	-- ALTER TABLE cons ADD CONSTRAINT unique_email UNIQUE (email);
-- NOT NULL Constraint
	-- ALTER TABLE users MODIFY COLUMN name VARCHAR(100) NULL;
-- CHECK Constraint
	-- ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');
-- PRIMARY KEY Constraint
	-- ALTER TABLE users ADD PRIMARY KEY (id);
-- INSERT INTO users (email, gender, date_of_birth, salary) VALUES
--  ('gagan@example3.com', 'Male', '1995-06-12', 65000.00);

-- 6- MySql FUNCTIONS

-- **Aggregate Functions
-- 	SELECT COUNT(*) FROM users;
-- 	SELECT COUNT(*) FROM users WHERE gender = 'Female';
-- 	SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;
-- 	SELECT SUM(salary) AS total_payroll FROM users;
-- 	SELECT AVG(salary) AS avg_salary FROM users;
-- 	SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;

-- **String Functions
-- 	SELECT name, LENGTH(name) AS name_length FROM users;
-- 	SELECT name, LOWER(name) AS lowercase_name FROM users;
-- 	SELECT name, UPPER(name) AS uppercase_name FROM users;
-- 	SELECT CONCAT(name, ' <', email, '>') AS user_contact FROM users;

-- **Date Functions
-- 	SELECT NOW();
-- 	SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
-- 	SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived FROM users;
-- 	SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS age FROM users;

-- **Mathematical Functions

--  SELECT salary, ROUND(salary) AS rounded, FLOOR(salary) AS floored, CEIL(salary) AS ceiled FROM users;
--  SELECT id, MOD(id, 2) AS remainder FROM users;

-- **Conditional Functions
--  SELECT name, gender, IF(gender = 'Female', 'Yes', 'No') AS is_female FROM users;

-- 7- Auto Commit & Transactions

-- set autocommit = 0;
-- delete from users where id=5;
-- rollback;
-- commit;