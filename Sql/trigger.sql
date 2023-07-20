create database db;
use db;
create table product(pdtid varchar(10) primary key, pname varchar(10), price varchar(10), qtyInStock varchar(10));
create table sales(saleid varchar(10) primary key, deliveryAddress varchar(10));
create table saleitem(saleid varchar(10), pdtid varchar(10), qty varchar(10), primary key(saleid, pdtid));

create trigger updatAvailableQuantity
after insert
on saleitem
for each row
update product set product.qtyInStock = product.qtyInStock - new.qty
where product.pdtid = new.pdtid;

insert into product value('1','pen','30','1000');
insert into saleitem value('101','1','600');

select * from product;
