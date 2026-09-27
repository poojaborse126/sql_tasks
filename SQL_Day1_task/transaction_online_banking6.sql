use training_institute;

create table account(
account_id int primary key,
customer_name varchar(100),
balance decimal(10,2) );

insert into account (account_id, customer_name, balance) values
(1, 'Account A', 50000.00),
(2, 'Account B', 20000.00);

start transaction;

update account set balance= balance - 5000 where account_id=1;

update account set balance= balance + 5000 where account_id=2;

commit;

start transaction;
update account set balance= balance - 5000 where account_id=1;
update account set balance= balance + 5000 where account_id=3;

update account set balance= balance + 5000 where account_id=2;

commit;

start transaction;
update account set balance= balance - 10000 where account_id=1;

rollback;