create table  department (
dept_id int primary key,
dept_name varchar(100) not null unique);

insert into department(dept_id, dept_name) values
(1,'IT'),(2,'HR'),(3,'Finance'),(4,'Marketing'),(5,'Sales');

select * from department order by dept_id asc;

create table employee(
emp_id int primary key,
emp_name varchar(60) not null,
email varchar(100) unique,
salary decimal(10,2) check(salary>=15000),
city varchar(60) default 'pune',
dept_id int,
foreign key (dept_id) references department(dept_id) );

insert into employee(emp_id, emp_name, email, salary, city, dept_id) values
(101,'Rahul','rahul@gmail.com',45000.00,'Mumbai',1),
(102,'Priya','priyu@gmail.com',55000.00,'Nagpur',1),
(103,'Amit','amit@gmail.com',50000.00,'Thane',1),
(104,'Sneha','sneha@gmail.com',65000.00,'Pune',1),
(105,'Rohit','rohit@gmail.com',45000.00,'Mumbai',1);

insert into employee(emp_id, emp_name, email, salary, dept_id) values
(106,'Radha','radha@gmail.com',55000.00,1),
(107,'Priyanka','priya@gmail.com',55000.00,1),
(108,'Amol','amol@gmail.com',70000.00,1),
(109,'Snehal','snehal@gmail.com',65000.00,1),
(110,'Ronit','ronit@gmail.com',55000.00,1);

insert into employee(emp_id, emp_name, email, salary, city, dept_id) value
(111,'Jeeva','jeeva@gmail.com',53000.00,'Nashik',99);

update employee set dept_id=1 where emp_id=103;

update employee set salary=salary+5000 where emp_id=105;

update employee set salary=salary+3000 where dept_id=1;

delete from employee where emp_id=108;
insert into employee(emp_id, emp_name, email, salary, city, dept_id) value
(101,'Jeevika','jeevika@gmail.com',65000.00,'Nagpur',1);

insert into employee(emp_id, emp_name, email, salary, city, dept_id) value
(112,'null','anu@gmail.com',65000.00,'Nashik',2);

insert into employee(emp_id, emp_name, email, salary, city, dept_id) value
(113,null,'anuradha@gmail.com',65000.00,'Nashik',2);

insert into employee(emp_id, emp_name, email, salary, city, dept_id) value
(113,'Mohini','jeeva@gmail.com',65000.00,'Nashik',2);

use college_db;
insert into employee(emp_id, emp_name, email, salary, city, dept_id) value
(114,'Ritu','ritu@gmail.com',65000.00,'Nashik',99);
