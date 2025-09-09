use newdb;
-- select all values from the database.
select * from emp;
-- Take the all values from the specific values using column name:
select emp_name from emp;
-- take the row vise filtering process. 
select emp_name from emp where emp_id = 2;
-- Sorting 
select * from emp order by emp_id desc;
-- Remove Duplicate values
select distinct emp_name from emp;
-- Like Latter start% and %end 
select emp_name from  emp where emp_name LIKE '%m';

-- Aggregate Function(Build in function)
-- count(),max(),min(),avg()
select count(emp_salary)  from emp;
-- Grouping
select emp_depart,count(emp_depart) as department_count from emp group by emp_depart;
-- Grouping and having
select emp_depart, sum(emp_salary) as total_salary from emp group by emp_depart having sum(emp_salary) > 50000;
-- LIMIT
select * from emp LIMIT 2;


