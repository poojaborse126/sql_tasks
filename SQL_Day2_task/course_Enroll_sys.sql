use training_institute;
create table course( 
course_id int primary key,
course_name varchar(60) not null  unique,
duration decimal(10,2) check(duration>0),
fees int check(fees>0) );

alter table course  modify column duration int;
alter table course modify column fees decimal(10,2);
desc course;

create table student(
student_id int primary key,
student_name varchar(60) not null,
email varchar(60) unique,
city varchar(60) default 'pune',
course_id int,
foreign key (course_id) references course(course_id) );

insert into course(course_id, course_name,duration, fees) values
(101,'Java',6,30000),
(102,'Python',5,45000),
(103,'Web development',4,30000),
(104,'Software testing',6,50000),
(105,'UI/UX Design',6,56000);

insert into student(student_id,student_name,email,city,course_id) values
(1,'Kaveri Jagtap','kaveri@gmail.com','Nagpur',101),
(2,'Mohini Patil','mohini@gmail.com','Nashik',102),
(3,'Rudra Rayte','rudra@gmail.com','Pune',103),
(4,'Komal Rane','komal@gmail.com','Thane',104),
(5,'Priya Jagtap','priya@gmail.com','Mumbai',105),
(6,'Sonu Lele','sonu@gmail.com','Pune',105),
(7,'Radha Singh','radha@gmail.com','Mumbai',104),
(8,'Raj Patel','raj@gmail.com','Nagpur',103),
(9,'Seema Tupe','seema@gmail.com','Thane',102),
(10,'Sejal More','sejal@gmail.com','Nagpur',101);

select * from student;

insert into student(student_id,student_name,email,city,course_id) value
(11,'Kaveri Sharma','kaui@gmail.com','Nagpur',999);

update student set course_id=105 where student_id = 9;
update student set city='Mumbai' where student_id =3;

update course set fees=55000 where course_id=104;

delete from student where student_id=9;

delete from course where course_id=105;