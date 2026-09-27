use training_institute;
/* ....aggreate functions............*/
SELECT COUNT(*) FROM employee1;

SELECT SUM(salary) FROM employee1;

select avg(salary) from employee1;

select min(salary) from employee1;

select max(salary) from employee1;

/*............String functions................*/

select upper(emp_name) from employee1;

select lower(emp_name) from employee1;

select concat(emp_name,'',age) from employee1;

select length(emp_name) from employee1;

select substring(emp_name, 1,4) from employee1;

select replace(emp_name, 'a','b') from employee1;
/*.......date and time functions..............*/
select year(joining_date) from employee1;

select now();

select curdate();

select current_time();

select month(joining_date) from employee1;



select emp_name, datediff(curdate(),joining_date) /365  from employee1;
