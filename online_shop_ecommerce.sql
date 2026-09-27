create database shopsmart_db;
use shopsmart_db;

create table customers(
customer_id int,
full_name varchar(80),
email varchar(100),
phone varchar(15),
city varchar(50),
registration_date date,
status varchar(20),
credit_limit decimal(10,2) );

alter table customers add primary key (customer_id);
desc customers;
alter  table customers modify column email varchar(255) not null unique;

create table product(
 product_id int primary key,
 product_name varchar(100),
 category varchar(50),
 price decimal(10,2),
 stock_qty int,
 sku varchar(40),
 brand varchar(50),
 product_status varchar(20) );
 
alter table product 
add constraint chk_price_and_stock check(price > 0 and stock_qty >=0);

alter table product alter column product_status set default 'available';
desc product;

create table orders(
order_id int,
customer_id int,
product_id int,
order_date Date,
quantity int,
total_amount decimal(10,2),
order_status varchar(25),
shipping_city varchar(50),
foreign key (customer_id) references customers(customer_id) );
desc orders;

alter table orders add primary key (order_id);

create table payments(
payment_id int primary key,
order_id int,
payment_date date,
amount decimal(10,2) check (amount >0),
payment_method varchar(25),
transaction_ref varchar(60) unique not null,
payment_status varchar(20),
currency varchar(10),
foreign key (order_id) references orders(order_id)
);
 desc payments;
 
 insert into customers(customer_id,full_name,email,phone,city,registration_date,status,credit_limit) values
 (101,'Amit Patil','amit@gmail.com',9087676554,'pune','2026-08-01','active',50000),
 (102,'Neha Sharma','neha@gmail.com',9187676554,'Mumbai','2026-08-03','active',40000),
 (103,'Rohit Joshi','rohit@gmail.com',9087676584,'Nashik','2026-08-05','active',30000),
 (104,'Priya More','priya@gmail.com',9587676554,'pune','2026-08-07','Inactive',20000);
 
insert into customers(customer_id,full_name,email,phone,city,registration_date,status,credit_limit) values
 (105,'Sagar Kulkarni','sagar@gmail.com',9087576554,'Thane','2026-08-09','active',60000),
 (106,'Neha varma','nehu@gmail.com',9187076554,'Mumbai','2026-08-11','Inactive',25000),
 (107,'Ronit Joshi','ronit@gmail.com',9087675584,'Nashik','2026-08-15','active',30000),
 (108,'Priyaka More','priyu@gmail.com',9587606554,'pune','2026-08-17','Inactive',27000);
 
 insert into product(product_id,product_name,category,price,stock_qty,sku,brand,product_status) values
 (201,'Laptop','Electronics',65000,20,'SKU-LAP-01','HP','available'),
 (202,'Keyboard','Electronics',1200,120,'SKU-KEY-01','Dell','available'),
 (203,'Mouse','Electronics',700,150,'SKU-MPU-01','HP','available'),
 (204,'Monitor','Electronics',15000,35,'MON-LAP-01','Samsung','available'),
 (205,'Backpack','Accessories',1800,80,'BAG-LAP-01','Skybag','available'),
 (206,'Headphones','Accessories',2500,60,'SKU-HEAD-01','Boat','available'),
 (207,'Printer','Electronics',12000,25,'SKU-PRI-01','Canon','available'),
 (208,'Webcam','Electronics',1500,45,'SKU-WEB-01','Logitech','available');
   
 insert into orders(order_id,customer_id,product_id,order_date,quantity,total_amount,order_status,shipping_city) values
 (301,101,201,'2026-09-01',1,65000,'Placed','Pune'),
 (302,102,202,'2026-09-02',2,2400,'Shipped','Nashik'),
 (303,103,203,'2026-09-03',3,2100,'Delivered','Mumbai'),
 (304,104,204,'2026-09-04',1,15000,'Placed','Pune'),
 (305,105,205,'2026-09-05',2,3600,'Cancelled','Kolhapur'),
 (306,106,206,'2026-09-06',1,2500,'Delivered','Nashik'),
 (307,107,207,'2026-09-07',1,12000,'Shipped','Pune'),
 (308,108,208,'2026-09-08',2,7000,'Placed','Thane');
 
 insert into payments(payment_id,order_id,payment_date,amount,payment_method,transaction_ref,payment_status,currency) values
 (401,301,'2026-09-01',65000,'UPI','TXN1001','Success','INR'),
 (402,302,'2026-09-02',2400,'Card','TXN1002','Success','INR'),
 (403,303,'2026-09-03',2100,'UPI','TXN1003','Success','INR'),
 (404,304,'2026-09-04',15000,'NetBanking','TXN1004','Refunded','INR'),
 (405,305,'2026-09-05',3600,'UPI','TXN1005','Success','INR'),
 (406,306,'2026-09-06',2500,'Card','TXN1006','Success','INR'),
 (407,307,'2026-09-07',12000,'UPI','TXN1007','Success','INR'),
 (408,308,'2026-09-08',7000,'Card','TXN1008','Pending','INR');
 
  insert into product(product_id,product_name,category,price,stock_qty,sku,brand,product_status) values
 (209,'Gaming Mouse','Electronics',1499,26,'SKU-LOGI-99','Logitech','available');

insert into customers(customer_id,full_name,email,phone,city,registration_date,status,credit_limit) values
 (101,'Rani Patil','rani@gmail.com',9099676554,'pune','2026-09-01','active',50000);

insert into customers (customer_id,full_name,email,phone,city,registration_date,status,credit_limit) values
 (109,'Amit Shinde','amit@gmail.com',9087006554,'pune','2026-08-01','active',50000);

insert into customers(customer_id,full_name,email,phone,city,registration_date,status,credit_limit) values
 (110,'Raj Patil',null,8087676554,'pune','2026-08-09','active',50000);

insert into orders(order_id,customer_id,product_id,order_date,quantity,total_amount,order_status,shipping_city) values
 (309,101,201,'2026-09-01',-6,45000,'Placed','Pune');

 insert into payments(payment_id,order_id,payment_date,amount,payment_method,transaction_ref,payment_status,currency) values
 (409,301,'2026-09-01',-5000,'UPI','TXN1001','Success','INR');