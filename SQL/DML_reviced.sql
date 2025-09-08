create database newdb;
use newdb;

create table emp (
emp_id int primary key auto_increment,
emp_name varchar(200),
emp_salary int,
emp_depart int
);

insert into emp (emp_name,emp_salary,emp_depart) values ("Ram",40000,102);


update emp set emp_salary = 300000,emp_name="Ram Prakash" where emp_id = 1;

delete from emp where emp_id = 1;

