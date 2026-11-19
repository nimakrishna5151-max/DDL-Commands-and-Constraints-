-- ===== Part 1: Create database and tables =====
drop database if exists employee;
create database employee;
use employee;

create table department (
    department_id int primary key,
    department_name varchar(100)
);

create table location (
    location_id int primary key,
    location varchar(30)
);

create table employees (
    employee_id int primary key,
    employee_name varchar(50),
    gender enum('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2),
    foreign key (department_id) references department(department_id),
    foreign key (location_id) references location(location_id)
);

-- ===== Part 2: ALTER =====
alter table employees add column email varchar(100);
alter table employees modify column designation varchar(255);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;

alter table department rename to Departments_Info;
alter table location rename to Locations;

show tables;
describe employees;

-- ===== Part 3: TRUNCATE =====
truncate table employees;

-- ===== Part 4: DROP =====
drop table employees;
drop database employee;

-- ===== Part 5: Recreate with constraints =====
create database employee;
use employee;

create table departments (
    department_id int primary key,
    department_name varchar(100) not null unique
);

create table location (
    location_id int primary key auto_increment,
    location varchar(30) not null unique
);

create table employees (
    employee_id int primary key,
    employee_name varchar(50) not null,
    gender enum('M','F'),
    age int,
    hire_date date default (curdate()),
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2),
    constraint chk_age check (age >= 18),
    foreign key (department_id) references departments(department_id),
    foreign key (location_id) references location(location_id)
);

describe employees;
select * from employees;