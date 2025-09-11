CREATE DATABASE student;
USE student;
CREATE TABLE class10 (
	sdt_id int auto_increment primary key,
    sdt_name varchar(50) not null,
    sdt_dob date,
	sdt_gender enum('male', 'female'),
    sdt_marks int
);
SELECT * FROM class10;
SELECT sdt_name, sdt_marks FROM class10;
INSERT INTO class10 (sdt_id, sdt_name, sdt_dob, sdt_gender, sdt_marks)
values (1, 'Arun', '2002-02-22', 'male', 77);
INSERT INTO class10 (sdt_id, sdt_name, sdt_dob, sdt_gender, sdt_marks)
values (2, 'Bharath', '2003-12-14', 'male', 77);
INSERT INTO class10 (sdt_id, sdt_name, sdt_dob, sdt_gender, sdt_marks)
values (3, 'charan', '2003-10-2', 'male', 77);
INSERT INTO class10 (sdt_id, sdt_name, sdt_dob, sdt_gender, sdt_marks)
values (4, 'Manog', '2003-10-27', 'male', 77);

-- update class10 set sdt_name = 'kalyan', sdt_gender = 'male' where sdt_id = 3;

-- ALTER TABLE class10 modify COLUMN sdt_gender enum('male', 'female') AFTER sdt_name;
-- ALTER TABLE class10 DROP COLUMN is_active;