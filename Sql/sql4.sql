 create database company;
 
 use company;
 
create table jobs (job_id int primary key,job_title varchar(20),min_salary numeric(7,2),
max_salary numeric(10,2));

 create table regions (region_id int primary key,region_name varchar(20));

 create table countries (country_id varchar(2) primary key,country_name varchar(20),region_id int ,
 foreign key(region_id ) references regions(region_id ));

 create table locations(location_id int primary key,street_address varchar(20),postal_code int(6),
 city varchar(20),state_province varchar(20),country_id varchar(2) ,
 foreign key(country_id ) references countries(country_id ));

 create table departments(department_id int primary key,department_name varchar(20),location_id int,
 foreign key (location_id) references locations(location_id));

 create table employees (employee_id int primary key,first_name varchar(10),last_name varchar(10),
 email varchar(20),phone_number numeric(10),hire_date date,job_id int,salary numeric(10,2),
 manager_id int,department_id int,foreign key (manager_id) references employees(employee_id),
 foreign key (department_id) references departments(department_id));

 create table dependents(dependent_id int primary key,first_name varchar(10),last_name varchar(20),
 relationship varchar(25),employee_id int,foreign key (employee_id) references employees(employee_id));
 
 
 alter table departments rename to dept;
 
 alter table employees modify column salary smallint;
 
 alter table employees add column commission numeric(10,2);
 
INSERT INTO regions(region_id,region_name) VALUES (1,'Europe');
INSERT INTO regions(region_id,region_name) VALUES (2,'Americas');
INSERT INTO regions(region_id,region_name) VALUES (3,'Asia');
INSERT INTO regions(region_id,region_name) VALUES (4,'Middle East Africa');

INSERT INTO countries(country_id,country_name,region_id) VALUES
('AR','Argentina',2);

INSERT INTO countries(country_id,country_name,region_id) VALUES
('AU','Australia',3);

INSERT INTO countries(country_id,country_name,region_id) VALUES
('BE','Belgium',1);

INSERT INTO countries(country_id,country_name,region_id) VALUES
('BR','Brazil',2);

INSERT INTO countries(country_id,country_name,region_id) VALUES
('CA','Canada',2);

INSERT INTO countries(country_id,country_name,region_id) VALUES
('CH','Switzerland',1);