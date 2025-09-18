USE startersql;

SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM admin_users;

SELECT name, email, date_of_birth, 'user' as role FROM users
UNION 
SELECT name, email, date_of_birth, 'admin' as role FROM admin_users 
ORDER BY date_of_birth; 