-- Greater Than / Less Than
select * from users where date_of_birth < '1995-10-10';
-- BETWEEN
SELECT * from users where date_of_birth BETWEEN '1990-10-10' AND '1999-10-10';
-- IN
select * from users where gender in ('male', 'female'); 
-- AND
select * from users where gender = 'male' and salary > 50000;
-- ORDER BY -- LIMIT
select * from users where salary > 60000 order by created_at desc limit 5;
select * from users order by salary desc ;
select * from users where salary between 50000 and 70000;