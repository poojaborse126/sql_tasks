create table patient(
patient_id int primary key ,
patient_name varcharacter(60) not null,
email varchar(100) unique,
age int check(age>0),
gender varchar(10),
city varchar(60) default 'pune',
status varchar(60) default 'admitted');

insert into patient(patient_id,patient_name, email, age, gender, city, status) values
(101,'Ramesh Sharma', 'ramesh@gmail.com', 30, 'Male','Mumbai','admitted'),
(102,'Radha Singh', 'radha@gmail.com', 17, 'Female','Nashik','admitted'),
(103,'Priya Shetty', 'priya@gmail.com', 35, 'Female','Mumbai','discharged'),
(104,'Kiran Naik', 'kiran@gmail.com', 45, 'Male','Thane','admitted'),
(105,'Sneha Raut', 'sneha@gmail.com', 30, 'Feale','Mumbai','admitted'),
(106,'Vicky Rathi', 'vicky@gmail.com', 55, 'Male','Pune','discharged'),
(107,'Kaveri Patil', 'kaveri@gmail.com', 20, 'Female','Pune','admitted'),
(108,'Tushar More', 'tushar@gmail.com', 56, 'Male','Mumbai','admitted'),
(109,'Anjali Kale', 'anjali@gmail.com', 40, 'Female','Kolhapur','discharged'),
(110,'Pooja Shinde', 'puja@gmail.com', 30, 'Female','Mumbai','admitted');

insert into patient(patient_id,patient_name, email, age, gender, status) values
(111,'Rama Sharma', 'rama@gmail.com', 37, 'Male','admitted');

insert into patient(patient_id,patient_name, email, age, gender, city) values
(112,'Raman Sharma', 'raman@gmail.com', 31, 'Male','Mumbai');

insert into patient(patient_id,patient_name, email, age, gender, city, status) values
(101,'Piyush Mogal', 'piyush@gmail.com', -5, 'Male','Mumbai','admitted');

insert into patient(patient_id,patient_name, email, age, gender, city, status) values
(113,'Poonam Sharma', 'ramesh@gmail.com', 30, 'Male','Mumbai','admitted');

insert into patient(patient_id,patient_name, email, age, gender, city, status) values
(113,null, 'rajesh@gmail.com', 30, 'Male','Mumbai','admitted');

update patient set status='discharged' where patient_id=110;

update patient set city='pune' where patient_id=110;

delete from patient where patient_id=105;
select * from  patient;