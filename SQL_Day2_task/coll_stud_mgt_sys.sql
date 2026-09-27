create database college_db;
use college_db;

create table student(
student_id int primary key,
student_name varchar(60) not null,
email varchar(100) unique,
age int check(age>=18),
city varchar(60) default 'pune',
courese varchar(60) not null );

desc student;
 alter table student rename column courese to course;
 
insert into student(student_id, student_name, email, age, city, course) values
(101,'Priya Mohite','priu@gmail.com',21,'Nashik','Computer Science'),
(102,'Sejal Rathi','sej@gmail.com',24,'Thane','Mechanical'),
(103,'Sanvi Borse','sanu@gmail.com',25,'Mumbai','Data Science'),
(104,'Jeet Singh','jeet@gmail.com',26,'Nagpur','AI & ML'),
(105,'Dhruv Nene','dhruv@gmail.com',29,'Nashik','Electrical'),
(106,'Pooja Rane','puja@gmail.com',31,'Nagpur','Electronics');

insert into student(student_id,student_name, email, age, course) values
(107,'Aarav Arora','aarav@gmail.com',21,'CS'),
(108,'Shubham Rathi','shubhu@gmail.com',24,'IT');

insert into student(student_id,student_name, email, age, course) value
(105,'Aarav Arora','aarav@gmail.com',21,'CS');

insert into student(student_id,student_name, email, age,city, course) value
(109,null,'aaru@gmail.com',21,'pune','CS');

insert into student(student_id,student_name, email, age,city, course) value
(109,'Raj Rane','aaru@gmail.com',29,'pune','CS');

insert into student(student_id,student_name, email, age,city, course) value
(111,'Raj Rane','raju@gmail.com',18,'pune','CS');

update student set city='Nagpur' where student_id=103;
update student set course='python' where student_id=105;

delete from student where student_id=108;

select * from student;





