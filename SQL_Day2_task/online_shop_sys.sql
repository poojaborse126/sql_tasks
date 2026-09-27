use college_db;

create table product(
product_id int primary key,
product_name varchar(100) not null,
email varchar(70) unique,
price decimal(10,2) check(price>0),
quantity int default 0,
status varchar(60) default 'available',
category varchar(60) );

insert into product (product_id,product_name,email,price,quantity,status,category)values
(1,'Laptop','laptop@shop.com',55000.00, 15,'available','Electronics'),
(2,'Mobile','mobile@shopcom',25000.00, 25,'available','Electronics'),
(3,'Keyboard','keyboard@shop.com',1500.00, 30,'available','Accessories'),
(4,'Mouse',',mouse@shop.com',800.00, 35,'available','Accessories'),
(5,'Monitor','monitor@shop.com',12000.00, 20,'available','Electronics');

insert into product (product_id,product_name,email,price,category)values
(6,'Headphones','headphones@shop.com',2500.00,'Accessories'),
(7,'Printer','printer@shop.com',15000.00,'Electronics'),
(8,'Tablet','tablet@shop.com',30000.00,'Electronics'),
(9,'Webcam','webcam@shop.com',3500.00,'Accessories'),
(10,'Speaker','speaker@shop.com',4500.00,'Accessories');

insert into product (product_id,product_name,email,price,category) value
(11,'Headphones','headphones@shop.com',-500.00,'Accessories');

update product set price=price+2000 where product_name='Laptop';

update product set quantity =50 where product_name = 'Mouse';        

update product set status='Out Of Stock' where product_id=1;                                                      

delete from product where product_id=5;


insert into product (product_id,product_name,email,price,category) value
(11,'Headphones','laptop@shop.com',55000.00,'Accessories');
