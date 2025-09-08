use teashop;


create table  department (
dept_id int primary key auto_increment,
dept_name varchar(30) not null
);

create table employees (
emp_id int primary key auto_increment,
emp_name VARCHAR(200) NOT NULL,
emp_city VARCHAR(20),
emp_salary int,
emp_mobile int,
date_of_join date,
depart_id int,
constraint fk_dept foreign key (depart_id) references staff(dept_id)
);

-- New Column Added-- 
alter table department ADD deprt_code int;
-- Table name change
alter table department rename to staff;
-- Table column name change
alter table staff rename column dept_name to departmentname;
-- Modify the datatype
ALTER TABLE staff MODIFY departmentname VARCHAR(200);   


drop table employees;




