create database employee
use employee
create table employee_tbl
(
empid int primary key,
firstname varchar(50),
lastname varchar(50),
salary float,
mobileno varchar(15)
)
select * from employee_tbl
insert into employee_tbl values(5,'sp','st',80000,'809038368222')
delete from employee_tbl where empid=1
update employee_tbl set firstname='bb' where empid=3

select max(salary) from employee_tbl
select TOP 1 salary from(select DISTINCT TOP 1 salary from employee_tbl ORDER BY salary DESC)
result ORDER BY salary ASC

select max(salary) from employee_tbl
where salary NOT IN (select max(salary) from employee_tbl)

select TOP 1 salary from(select DISTINCT TOP 2 salary from employee_tbl ORDER BY salary DESC)
result ORDER BY salary ASC

select max(salary) from employee_tbl
where salary < (select max(salary) from employee_tbl
where salary NOT IN (select max(salary) from employee_tbl))

select TOP 1 salary from(select DISTINCT TOP 3 salary from employee_tbl ORDER BY salary DESC)
result ORDER BY salary ASC

select min (salary) from employee_tbl




