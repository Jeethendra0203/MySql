select * from users;
ALTER TABLE cons ADD CONSTRAINT unique_email UNIQUE (email);
ALTER TABLE users MODIFY COLUMN name VARCHAR(100) NULL;
ALTER TABLE users ADD CONSTRAINT chk_dob CHECK (date_of_birth > '2000-01-01');
ALTER TABLE users ADD PRIMARY KEY (id);
INSERT INTO users (email, gender, date_of_birth, salary) VALUES
 ('gagan@example3.com', 'Male', '1995-06-12', 65000.00);
