use training_institute;
/*......SQL DDL Challenge................*/

create table company( 
company_id int primary key, 
company_name varchar(50) );

create table department( department_id int primary key,  department_name varchar(50) );

create table employee( employee_id int primary key,  employee_name varcharacter(50) );

alter table employee add employee_email varchar(50);

alter table employee modify column employee_email varchar(100);

alter table  employee rename column employee_email to emp_email;

alter table employee drop column emp_email;
desc employee;

/*...........Delete vs Truncate vs Drop Challenge.....................*/

create table employee2(  
id int primary key, 
name varchar(50), 
salary decimal(10,2) );

Insert into employee2(id, name, salary) values
(101,'Pooja',45000.00),(102, 'Sanvi', 55000.00),(103,'Raj',60000.00),(104, 'Jeevika', 40000.00),(105, 'Janvi',70000.00);

delete from employee2 where id=103;
truncate table employee2;
drop table employee2;

/*............. SAVEPOINT Challenge ....................*/
create table employee3(  
id int primary key, 
name varchar(50), 
salary decimal(10,2) );


Insert into employee3(id, name, salary) values
(101,'Pooja',45000.00),(102, 'Sanvi', 55000.00),(103,'Raj',60000.00),(104, 'Jeevika', 40000.00),(105, 'Janvi',70000.00);

start transaction;

update employee3 set salary = 50000.00  where id=101;
savepoint my_savepoint;
update employee3 set salary = 75000.00  where id=102;
update employee3 set salary = 80000.00  where id=103;

rollback to my_savepoint;
commit;