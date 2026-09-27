create table customer(
customer_id int primary key,
customer_name varchar(60) not null,
email varchar(60) unique,
age int check(age>=18),
city varchar(60) default 'pune',
account_status varchar(60) default 'active' );

insert into customer(customer_id, customer_name, email, age, city, account_status) values
(1, 'Pooja Mahale', 'puja@gmail.com', 33, 'Mumbai','active'),
(2, 'Ranu Sharma', 'ranu@gmail.com', 23, 'Nashik','active'),
(3, 'Pooja Rai', 'pooja@gmail.com', 30, 'Thane','active'),
(4, 'Ketan Patel', 'ketan@gmail.com', 45, 'Nagpur','inactive'),
(5, 'Pratiksha Mogal', 'pratu@gmail.com', 43, 'Pune','inactive'),
(6, 'Raj More', 'raj@gmail.com', 36, 'Nashik','active'),
(7, 'Kaveri Jagtap', 'kaveri@gmail.com', 34, 'Mumbai','inactive'),
(8, 'Leela Deshmukh', 'leela@gmail.com', 33, 'Mumbai','active'),
(9, 'Maya Verma', 'maya@gmail.com', 35, 'Thane','active'),
(10, 'Snehal Patel', 'snehal@gmail.com', 43, 'Mumbai','active');

insert into customer(customer_id, customer_name, email, age, account_status) values
(11, 'Priyanka Mahale', 'priu@gmail.com', 30,'active');

insert into customer(customer_id, customer_name, email, age, city) values
(12, 'Sanu Mehra', 'sanu@gmail.com', 39, 'Thane');

insert into customer(customer_id, customer_name, email, age, city, account_status) values
(1, 'Pooja Mehra', 'puja1@gmail.com', 33, 'Mumbai','active');

insert into customer(customer_id, customer_name, email, age, city, account_status) values
(13, 'Snehal More', 'puja@gmail.com', 33, 'Mumbai','active');

insert into customer(customer_id, customer_name, email, age, city, account_status) values
(14, 'Maya Rajput', 'mayaraj@gmail.com', 12, 'Mumbai','active');

update  customer set city='Nagpur' where customer_id=9;
update customer set account_status = 'Inactive' where customer_id=10;
delete from customer where account_status='inactive';