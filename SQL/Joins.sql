-- select columnnames, from table1 e inner join table2 as d on e.dp = d.dit;

select e.emp_id, e.emp_name, depart.dept_name from employees emp inner join department depart on e.dept_id = d.dept_id;

select e.emp_id, e.emp_name, d.dept_name from employees e left join department d on e.dept_id = d.dept_id;

select e.emp_id, e.emp_name, d.dept_name from employees e right join department d on e.dept_id = d.dept_id;