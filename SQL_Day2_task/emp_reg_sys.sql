create table employee1(
emp_id int primary key,
emp_name varchar(60) unique not null,
email varchar(60) unique,
age int check(age>=18),
city varchar(60) default 'pune');

alter table employee1 add column mobile_number varchar(13);
alter table employee1 modify column mobile_number varchar(13) after email;
insert into employee1(emp_id,emp_name, email,mobile_number,age) values
(101,'Aarav Sharma','aarav@gmail.com','7890765609',23),
(102,'Sneha Rao','sneha@gmail.com','9890765609',33),
(103,'Priya Rathi','priya@gmail.com','9690765609',33),
(104,'Aaditya Varma','aadu@gmail.com','7890745609',30),
(105,'Aanand Sharma','aanandv@gmail.com','7890765679',32),
(106,'Ruhi Lele','ruhi@gmail.com','7830765609',28),
(107,'Janvi Sharma','janu@gmail.com','7890705609',27),
(108,'Tushar Raut','tushar@gmail.com','9890765679',26),
(109,'Chetan Borse','chets@gmail.com','9890765309',24),
(110,'Seema Sharma','seema@gmail.com','9890763609',23);

insert into employee1(emp_id,emp_name, email,mobile_number,age) values
(101,'Raghav Sharma','raghav@gmail.com','7890665609',23);

insert into employee1(emp_id,emp_name, email,mobile_number,age) values
(111,null,'raghav@gmail.com','7890665609',23);

insert into employee1(emp_id,emp_name, email,mobile_number,age) values
(111,'Raghav Sharma','janu@gmail.com','7890665609',23);

insert into employee1(emp_id,emp_name, email,mobile_number,age) values
(111,'Raghav Sharma','raghav@gmail.com','7890665609',13);

insert into employee1(emp_id,emp_name, email,mobile_number,age) values
(112,'Raghav Sharma','raghav@gmail.com','7890665609',13);

update employee1 set city='Mumbai' where emp_id = 110;

update employee1 set email='tush@gmail.com' where emp_id=108;

delete from employee1 where emp_id=105;