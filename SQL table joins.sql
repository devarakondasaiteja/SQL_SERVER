create database jinfo
use jinfo
create table tbl_employee
(
ID int not null,
NAME nvarchar(50) not null,
GENDER nvarchar(50) not null,
SALARY int not null,
DEPARTMENTID int
)
select * from tbl_employee
insert into tbl_employee values(10,'Russell','male', 8800,null)

create table tbl_department
(
ID int not null,
DEPARTMENT_NAME nvarchar(50) not null,
LOCATION NVARCHAR(50) not null,
DEPARTENT_HEAD NVARCHAR(50) NOT NULL
)
insert into tbl_department values (4,'OTHER DEPARTMENT', 'SYDNEY', 'CINDRELLA')
delete from tbl_department where id=4
select * from tbl_EMPLOYEE
select * from tbl_department
--inner join
select name,gender,salary,department_name
from tbl_employee
inner join tbl_department
on tbl_employee.departmentid = tbl_department.id

-- left join or left outer join

select name,gender,salary,department_name
from tbl_employee
left join tbl_department
on tbl_employee.departmentid = tbl_department.id

-- right join or right outer join

select name,gender,salary,department_name
from tbl_employee
right join tbl_department
on tbl_employee.departmentid = tbl_department.id

--Full join or Full outer join

select name,gender,salary,department_name
from tbl_employee
full outer join tbl_department
on tbl_employee.departmentid = tbl_department.id

-- cross join

select name,gender,salary,department_name
from tbl_employee
cross join tbl_department
--advance joins
select name,gender,salary,department_name
from tbl_employee
left join tbl_department
on tbl_employee.departmentid = tbl_department.id
where  tbl_department.id is null 

select name,gender,salary,department_name
from tbl_employee
right join tbl_department
on tbl_employee.departmentid = tbl_department.id
where tbl_employee.departmentid is null

select      name,gender,salary,department_name
from        tbl_employee
full join   tbl_department
on          tbl_employee.departmentid = tbl_department.id
where       tbl_employee.departmentid is null
or tbl_department.id is null 

