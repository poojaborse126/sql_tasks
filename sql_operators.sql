create database operators;
use operators;

create table employee(
emp_id int primary key,
name varchar(80),
salary decimal(10,2),
department varchar(50),
experience int,
age int,
status varchar(80)
);

insert into employee (emp_id, name, salary, department, experience, age, status) values
(101,'Saniya',53000,'Computer',4,28,'active'), 
(102,'Priya',57000,'IT',3,28,'active'), 
(103,'Maya',52000,'HR',2,24,'active'), 
(104,'Kajaol',48000,'Sales',5,30,'active'), 
(105,'Sai',47000,'Admin',6,23,'Inactive');

select salary + 2000 as updated_salary from employee;
update employee set salary = salary+1000 where emp_id =101;

update employee set salary = salary - 1000 where emp_id = 102;
update employee set salary = salary * 10 where emp_id = 102;
update employee set salary = salary / 10 where emp_id = 102;
update employee set salary = salary % 10 where emp_id = 102;


select salary - 1000 as net_salary from employee;
/**Comparision oerator********/
select * from employee where age =28;

select * from employee  where salary !=52000;
select * from employee  where salary  <> 51000;

select *from employee where salary > 50000;
select *from employee where salary < 50000;
select *from employee where salary >= 54000;
select *from employee where salary <= 50000;

/**Logical oerator**************/

select * from employee where name='sai' && age =23;

select * from employee where name='priya' or age=28;
select * from employee where name='priya' || age=28;
select * from employee where name='Priya' not like 'P%';

select name,age from employee where department in ('IT','Computer');

use operators;

select * from employee where name like 'p%';
select * from employee where name like '%s';
select * from employee where name like '%sa%';
select * from employee where name like '_p%';
select * from employee where name like 'p%a';

select * from employee where name is not null;

select * from employee order by experience asc;
select * from employee order by experience desc;

select  emp_id,name from employee order by salary desc limit 5;

create table department(
department_id int primary key,
name varchar(60) );
desc department;
alter table department add column emp_id int;
alter table department add constraint emp_id foreign key(emp_id)  references employee(emp_id);
select department, count(*) as total_emp from employee group by department;

select department, count(*) as total_emp from employee group by department having count(*)>1;

select department, max(salary) as max_salary from employee group by department;
select department, min(salary) as max_salary from employee group by department;

select department, count(*) as total_active_emp from employee 
where status = 'active' group by department;

select department, avg(salary) as avg_sal from employee
group by department having count(*) >=1 order by avg_sal desc;

alter table employee add column city varchar(80);
select * from employee where city != 'pune';
select * from employee where city <> 'pune';

select * from employee where salary != 40000;
select * from employee where salary > 50000;
select * from employee where salary < 60000;

/***Comparision operatoe***/
select * from employee where salary = 45000;
select * from employee where salary >= 47000;
select * from employee where salary <= 55000;



/**********IN Operator*******/
select * from employee where city in ('pune' , 'mumbai');
select * from employee where  city in ('pune', 'mumbai','nashik');
select * from employee where city not in('pune','mumbai');

/***************Between Operator*********/
select * from employee where salary between 30000 and 60000;
select * from employee where salary between 40000 and 70000;
select * from employee where salary not between 30000 and 60000;

/****Like Operator****/
select * from employee where name like 'p%';

select * from employee where name like '%a';
select * from employee where name like '%an%';
select * from employee where name like '%a%';
select * from employee where name like 's%';
select * from employee where name like '____';

select * from employee where department is null;
select * from employee where department is not null;
select * from employee where  city ='pune' and department is null;


/*********AND OR ***************/
select * from employee where salary > 40000;
select * from employee where salary <60000;
select * from employee where city = 'pune' || city = 'mumbai';
select * from employee where city = 'pune' or  city = 'mumbai';
select * from employee where city ='pune' or salary > 60000;
select * from employee where department='IT' and salary > 50000;
select * from employee where city = 'pune' and salary between 30000 and 60000;








