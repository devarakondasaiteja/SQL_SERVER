

select * from manager
select * from department
select * from employee


select emp_name, manager_name
 from employee 
cross join manager 

-- matching with manager_id
select emp_name, manager_name
 from employee
full join manager
 on employee.manager_id = manager.manager_id


select emp_name, manager_name
 from employee
inner join manager
 on employee.manager_id = manager.manager_id


select emp_name, manager_name
 from employee
right join manager
 on employee.manager_id = manager.manager_id

 --purpose of right join

 select manager_name, count(employee.manager_id) as total
 from employee
right join manager
 on employee.manager_id = manager.manager_id
 group by manager_name
 order by total

 select emp_name, manager_name
 from employee
 left join manager
 on employee.manager_id = manager.manager_id

 -- matching with dept_id
select emp_name, manager_name
 from employee
 full outer join manager
 on employee.dept_id = manager.dept_id


 select emp_name, manager_name
 from employee
 right join manager
 on employee.dept_id = manager.dept_id

 select emp_name, manager_name
 from employee
 left join manager
 on employee.dept_id = manager.dept_id

 select emp_name, manager_name
 from employee
 inner join manager
 on employee.dept_id = manager.dept_id
 --adv 
 select emp_name, manager_name
 from employee
 full outer join manager
 on employee.dept_id = manager.dept_id
 where employee.dept_id is null
 or manager.dept_id is null

 select emp_name, manager_name
 from employee
 right join manager
 on employee.dept_id = manager.dept_id
 where employee.dept_id is null

 select emp_name, manager_name
 from employee
 left join manager
 on employee.dept_id = manager.dept_id
 where manager.dept_id is null

 -- join 3 tables
 select * from manager
select * from department
select * from employee

select manager_name, dept_name, emp_name
from employee
join department
on employee.dept_id = department.dept_id
join manager
on employee.dept_id = manager.dept_id

select * from A_TABLE
select * from b_TABLE
select * from c_TABLE

select a_name,b_name, count(*) as total 
from a_table
join b_table on a_table.a_id = b_table.b_id
join c_table on a_table.a_id = c_table.c_id
group by b_name, c_name
order by b_name, c_name
  
select a_name,b_name, c_name
from a_table
join b_table on a_table.a_id = b_table.b_id
join c_table on c_table.c_id = a_table.a_id
group by b_name, c_name
order by b_name, c_name



