USE startersql;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
street VARCHAR(255),
city VARCHAR(100),
state VARCHAR(50),
pincode VARCHAR(10),
CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

DELETE FROM users WHERE id=22;
SELECT * FROM users;
SELECT * FROM addresses;