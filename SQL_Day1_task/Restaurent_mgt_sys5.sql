create table menu(
item_id int primary key,
item_name varchar(60),
category varchar(60),
price decimal(10,2),
description text,
available boolean default true);

insert into menu(item_id, item_name, category, price, description) value
(1,'Paneer Tikka','starter',220.00,'Grilled cottage cheese with spices'); 

insert into menu(item_id, item_name, category, price, description) value
(2,'Paneer Tikka','starter',240.00,'Grilled cottage cheese with spices'),
(3,'Jeers Rice','Rice',120.00,'steamed basmati rice tempered with cumin seeds'), 
(4,'Garlic Naan','Bread',60.00,'Leavened flatbread topped with minced garlic and butter'), 
(5,'Sizzling Brownie','Dessert',150.00,'Warm chocolate brownie served with hot fudge'), 
(6,'Butter Naan','Bread',50.00,' soft traditional Indian bread coated with butter'), 
(7,'Gulab Jamun','Dessert',80.00,'Classic swwt milk -solid balls soaked in sugar syrup'), 
(8,'Chiken Tikka','Main Course',280.00,'Tender chicken pieces cooked in rich tikka gravy'), 
(9,'Veg Spring Roll','starter',180.00,'Crispy rolls filled with seasoned mixed vegetables'), 
(10,'Hara Bhara Kabba','starter',220.00,'Healthy green spinach and green pea patties'), 
(11,'Veg Kadai','Main Course',290.00,'Assorted fresh vegetables cooked in spicy kadai masala'), 
(12,'Dal Makhani','Main Course',240.00,'Slow cooked black lentils with cream and butter'), 
(13,'Crispy Corn','starter',140.00,'Deep fried sweet corn tossed with tangy spices'), 
(14,'Chiken Biryani','Main Course',320.00,'Aromatic basmati rice layered with spiced marinated chicken'), 
(15,'Paneer Butter Masala','Main Course',100.00,'Cottage cheese cubes in rich creamy tomato gravy');

update menu set price =140 where  item_name='Jeers rice';

update menu set available=false where item_name='Dal Makhani';

delete from menu where item_name='Dal Makhani';