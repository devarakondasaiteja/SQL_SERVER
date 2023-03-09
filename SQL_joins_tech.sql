--techtfq -- joins
create database joins
use joins
--inner join --> join
--left join --> left outer join
--right join --> right outer join
-- employee table
create table employee
(
emp_id varchar(20),
emp_name varchar(50),
salary int,
dept_id varchar(20),
manager_id varchar(20)
)
insert into employee values('E6','giri', 35000,'D10', 'M3')
select * from employee

-- department table
create table department
(
dept_id varchar(20),
dept_name varchar(50)
)
insert into department values('D4','Admin')
select * from department

--manager table
create table manager
(
manager_id varchar(20),
manager_name varchar(50),
dept_id varchar(20)
)
insert into manager values('M4','chinnu','D1')
select * from manager

--project table
create table project
(
project_id varchar(20),
project_name varchar(100),
team_member_id varchar(20)
)
insert into project values('P2','ETL Tool','M4')
update project set project_id= 'P1' where team_member_id ='E2'
select * from project

select * from employee
select * from department
select * from manager
select * from project
-- fetch the employee name and the department name they belong to

--inner join --> fetches matching records only[4 rows]
select e.emp_name, d. dept_name
from employee e
inner join department d
on e.dept_id = d.dept_id

select * from employee  --D1, D2, D10
select * from department--D1, D2, D3, D4 [4 rows]

-- fetch all the employee name and the department name they belong to

-- left join-->left join = inner join  + any additional records in the left table [6 rows, dept_name have null]
select e.emp_name, d. dept_name
from employee e
left join department d
on e.dept_id = d.dept_id

select * from employee  --D1, D2, D10
select * from department --D1, D2


-- right join-->right join = inner join  + any additional records in the right table [6 rows, emp_name have null values]
select e.emp_name, d. dept_name
from employee e
right join department d
on e.dept_id = d.dept_id

select * from employee  --D1, D2
select * from department --D1, D2,D3,D4

-- full join --> innerjoin+ all records from left and right table(return null values)
select e.emp_name, d. dept_name
from employee e
full join department d
on e.dept_id = d.dept_id

select * from employee  --D1, D2, D10
select * from department --D1, D2,D3,D4

--cross join - returns cartesian product [6*4 = 24 records]
select e.emp_name, d. dept_name
from employee e
cross join department d



-- fetch details of all emp, their manager, their department and the project they work

select e.emp_name, d. dept_name, m.manager_name, p.project_name
from employee e
left join department d
on e.dept_id = d.dept_id

inner join manager m
on m.manager_id = e.manager_id

left join project p
on p.team_member_id = e.emp_id
select * from employee  --D1, D2, D10
select * from department --D1, D2,D3,D4

create table company
(
company_id varchar(10),
company_name varchar(50),
location varchar(20)
)
insert into company values('C001','trial solutions','Hyderabad')
select * from company

-- write a query to fetch the employee name and their corresponding department name
--also display the company name and location to the corresponding mployee.
select e.emp_name, d. dept_name , c.company_name, c.location
from employee e
inner join department d
on e.dept_id = d.dept_id
cross join company c
--cross join [4*1 = 4 rows]

-- natural join
select e.emp_name, d.dept_name
from employee e
natural join department d


-- self join
create table family
(
member_id varchar(10),
name varchar(50),
age int,
perent_id varchar(10)
)
insert into family values('F7', 'sara',30, 'F4')

select  * from family
sp_rename 'family.perent_id' , 'parent_id', 'column'
-- write a query to fetch the child name and their age corresponding to their parent name and parent
select child.name as child_name, child.age as child_age, parent.name as parent_name, parent.age as parent_age
from family as child
join family as parent 
on child.parent_id = parent.member_id

select  * from family
update family set age =('5','10','15','35','40','70','6') where member_id in('F1','F2','F3','F4','F5','F6','F7')
update family set age =('5','10','15','35','40','70','6') where name in('mary','nera','siri','teri','vira','peru','sara')

