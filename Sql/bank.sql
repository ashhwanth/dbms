-- create database bank
-- use bank
-- create table branch(name varchar(20) primary key,city varchar(20),assets numeric(12,2))
-- create table customer(name varchar(20) primary key,street varchar(20),city varchar(20))
-- create table loan(loan_no int primary key,branch_name varchar(20),amount numeric(12,2))
-- create table borrower(customer_name varchar(20) ,loan_no int  ,foreign key f1 (customer_name) references customer(name),foreign key f2 (loan_no) references loan(loan_no))
-- alter table borrower add constraint primary key (customer_name,loan_no)
-- create table account(account_number int primary key,branch_name varchar(20) references branch(name),balance numeric(8,2))
-- create table depositor(customer_name varchar(20),account_no int)
-- alter table depositor add constraint primary key (customer_name,account_no)
-- alter table depositor add foreign key f1 (customer_name) references customer(name)
-- alter table depositor add foreign key f2 (account_no) references account(account_number)

-- insert into customer value('Smith','Harison','Harison')
-- insert into customer value('Stephen','Paris','Arsenal')
-- insert into customer value('Albert','Harison','Harison');
-- insert into customer value('David','Melborn','victoria');
-- insert into customer value('Robert','Newyork','Newyork');

-- insert into branch value('Harison','Harison',120000);
-- insert into branch value('Harison','Harison',120000);
-- insert into branch values('victoria','victoria',250000),('Newyork','Newyork',4512587),('Arsenal','Arsenal',78451296);

-- insert into loan value(124578,'Harison',45000)
-- insert into loan value(124579,'victoria',35000)-- 
-- insert into loan value(124580,'Newyork',25000)

-- insert into bank.borrower value('Albert',124578)
-- insert into bank.borrower value('David',124579);
-- insert into bank.borrower value('Robert',124580);

-- insert into account values(147852,'Harison',65214),(147853,'Newyork',45127),(147854,'Paris',12457)
-- insert into bank.depositor values('Smith',147852),('Robert',147853),('Stephen',147854)

-- select name from customer where name in  (select customer_name from depositor ) and name not in (  select customer_name from borrower)

-- select name from customer where city in (select city from customer where name='Smith' ) or street in (select street from customer where name='Smith' )

--select name from customer 
--where street = (select distinct(street) from customer 
--where  street in (select street from customer where name='Smith')) 
--and city=(select distinct(city) from customer where city in
--(select city from customer where name='Smith')) and name <> 'Smith';



--select branch from branch where branch in (select distict(street) from customer where street='Harrison');
