-- DELETE - Removing Data from a Table

-- Example: Delete One Row
DELETE from users where id= 20;
-- Delete All Rows (but keep table structure)
DELETE FROM users;
-- deletes who's salary is less than 60000
DELETE FROM users where salary < 60000; 
-- Drop the Entire Table (use with caution)
DROP TABLE users;
SELECT * FROM users;

-- Auto Commit & Transactions

-- set autocommit = 0;
-- delete from users where id=5;
-- rollback;
-- commit;