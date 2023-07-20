create database db1;
use db1;
create table store(pdtid varchar(10) primary key, pname varchar(10), price varchar(10), quantity varchar(10));


 call insertproduct('1001','note','40','400');
 select * from store;