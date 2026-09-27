use training_institute;

create table product(
product_id int primary key,
product_name varchar(150),
category varchar(60),
price decimal(10,2),
quantity int,
description text,
manufactured_date date,
is_available boolean);

insert into product(product_id, product_name, category, price, quantity, description, manufactured_date,is_available) 
values
(101,'Laptop','Electronics',55000,10,'gaming-Laptop','2026-1-15',true),
(102,'Mobile','Electronics',25000,12,'smartphone','2026-1-10',false),
(103,'Headphones','Electronics',2500,40,'noise cancelling headphones','2026-11-30',true),
(104,'Chair','Furniture',500,100,'sitting','2026-5-15',false),
(105,'Running shoes','footwear',2500,25,'comfortable foot shoes','2026-7-21',true),
(106,'Desk Lamp','Home Decor',990.00,1,'LED rechargable desk lamp','2025-1-10',false),
(107,'Smart Watch','Electronics',3500,12,'Fitness tracker watch','2024-3-6',true),
(108,'Water Bottle','Accessories',1000,50,'Stainless steel bottle','2023-3-26',true),
(109,'Gaming mouse','Electronics',1900,20,'RGB optical gaming mouse','2025-6-17',true),
(110,'Smartphone','Electronics',15000,15,'Latest 5G smartphone','2026-1-10',true);

use training_institute;
update product set  price=58000 where product_name='laptop';   
select  * from product;
alter table product add brand varchar(50);