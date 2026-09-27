create table employee;


create table employee1(
employee_id int primary key,
emp_name varchar(50),
age int,
department varchar(60),
salary int,
email varchar(80),
joining_date date,
is_active boolean);

insert into employee1(employee_id, emp_name,age,department,salary,
email,joining_date,is_active) value(101,'Pratik',23,'Java',50000,'pratik@gmail.com','2026-1-11',
true);

insert into employee1(employee_id, emp_name,age,department,salary,
email,joining_date,is_active) values 
(102,'Pranali',26,'Python',55000,'pranu@gmail.com','2026-1-21',true),
(103,'Sanika',28,'Testing',48000,'pratik@gmail.com','2026-1-11',false),
(104,'Ranu',25,'HR',65000,'ranu@gmail.com','2026-4-24',false);

insert into employee1(employee_id, emp_name,age,department,salary,
email,joining_date,is_active) values 
(105,'Pooja',22,'Finance',70000,'puja@gmail.com','2026-1-21',true),
(106,'Samira',28,'Sales',48000,'samu@gmail.com','2026-5-25',false),
(107,'Rinku',25,'HR',65000,'rinku@gmail.com','2026-4-24',true),
(108,'Reva',25,'Java',65000,'reva@gmail.com','2026-4-24',true);

update employee1 set salary=55000 where employee_id=101;
delete from employee1 where employee_id=105;
alter table employee1 add experience decimal(4,1);
alter table employee1 modify column email varchar(150);
