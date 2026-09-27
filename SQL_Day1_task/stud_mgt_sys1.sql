CREATE DATABASE training_institute;
use training_institute;
CREATE TABLE students(
student_id Int PRIMARY KEY,
name VARCHAR(50),
age INT,
course VARCHAR(50),
fees DECIMAL(10,2),
email VARCHAR(100),
admission_date DATE,
is_active BOOLEAN);
desc students;

insert into student2(Stud_id,Sname,Age,Course,Fees,Email) values(101,'Pooja',27,'Java',50000,'puja@gmail.com');
insert into studentS(Stud_id,Sname,Age,Course,Fees,Email) values(101,'Pooja',27,'Java',50000,'puja@gmail.com');
insert into students(student_id,name,age,course,fees,email) values(101,'Pooja',27,'Java',50000,'puja@gmail.com');

SELECT * FROM training_institute.students;

insert into students values(102,'Poonam',22,'Java',50000,'punam@gmail.com'),
(103,'Sakshi',22,'Java',50000,'sakshi@gmail.com');
insert into students (student_id,name,age,course,fees,email) values(102,'Poonam',22,'Java',50000,'punam@gmail.com'),
(103,'Sakshi',22,'Java',50000,'sakshi@gmail.com');

SELECT * FROM training_institute.students;

insert into students (student_id,name,age,course,fees,email) values
(104,'Rohan',22,'Java',50000,'rohu@gmail.com','2020-2-1','inactive'),
(105,'Sakshi',22,'Java',50000,'sakshi@gmail.com','2026-2-1','active');
SELECT * FROM training_institute.students;

SELECT student_id, name, course, fees FROM students;
UPDATE students SET fees=55000 WHERE name='Ronit';
update students set course='SQL' where student_id=104;

delete from students where student_id=105;
alter table students add column phone varchar(15);
