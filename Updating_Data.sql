use startersql;
-- Update the salary of user with id = 3 to ₹70,000.
UPDATE users SET salary = 75000 WHERE id = 3;
-- Change the name of the user with email raj@example.com to Raj kumar
UPDATE users SET name = 'Raj kumar' WHERE email = 'raj@example.com';
-- Increase salary by ₹10,000 for all users whose salary is less than ₹60,000.
UPDATE users set salary=salary + 10000 WHERE salary < 60000;
-- Set the gender of user Ishaan to Other .
UPDATE users set gender= 'Other' WHERE name = 'Ishaan';
update users set email = 'gagan@example.com' where id = 27;
SELECT * FROM users;