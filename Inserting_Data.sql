CREATE DATABASE StudentDB;
USE StudentDB;
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,     -- Unique ID, auto-increment
    first_name VARCHAR(50) NOT NULL,               -- First name, cannot be empty
    last_name VARCHAR(50) NOT NULL,                -- Last name, cannot be empty
    email VARCHAR(100) UNIQUE,                     -- Email must be unique
    date_of_birth DATE,                            -- Stores date of birth
    gender ENUM('Male', 'Female', 'Other'),        -- Limited choices
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Record creation time
);

INSERT INTO students (student_id, first_name, last_name, email, date_of_birth, gender, created_at) VALUES 
(1, 'amy', 'jakson', 'amy@45.com', '2004-06-23', 'female', default),
(2,	'ALEX' ,'ADEM', 'alex@333.com', '2000-01-22', 'Male', default),
(3, 'alain', 'shole', 'alain@22.com', '1999-05-18', 'male', default),
(4, 'BOB', 'JOSH', 'bob@222.com', '2003-04-12', 'male', default),
(5, 'CHRISTIN', 'CLAR', 'clar@44.com', '2002-03-24', 'female', default),
(6, 'DOM', 'BENJEN', 'DOM@123.COM', '1985-05-14', 'MALE', default),
(7, 'ETHEN', 'WOOD', 'ethen@95.COM', '1995-09-20', 'MALE', default);

UPDATE students SET student_id = 11 where student_id = 7;

SELECT * from students;

delete from students where gender = 'femalede';

delete from students;

drop table students;