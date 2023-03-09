create database info_employee
use info_employee
create table emp_salary
(
id int not null,
name nvarchar(50) not null,
gender nvarchar(50) not null,
salary int not null,
city nvarchar(50) not null,
age int not null
)
insert into emp_salary values (1,'ram','m',200,'Hyderabad',25)
insert into emp_salary values (10,'paru','f',800,'sydney',29)
-- aggregation functions
select sum(salary) from emp_salary
select min(salary) from emp_salary
select city, sum(salary) as total_salary from emp_salary group by city
select city, gender, sum(salary) as total_salary from emp_salary group by city, gender
select count(*) from emp_salary
select city, gender, sum(salary) as total_salary,count(*) as emp_salary from emp_salary group by city, gender
select gender, city, sum(salary) as total_salary,count(*) as emp_salary from emp_salary where gender = 'm' group by gender, city
select gender,city, sum(salary) as total_salary,count(*) as emp_salary from emp_salary  group by gender, city having gender = 'm'
select gender,city, sum(salary) as total_salary,count(*) as emp_salary from emp_salary  group by gender, city having sum(salary) > 800
select * from emp_salary






