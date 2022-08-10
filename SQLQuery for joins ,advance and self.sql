use jinfo
select * from tbl_employee
select * from tbl_department

--BASIC JOIN
/* select        column list  
  from           first table name
  join name      second table name
  on first table name.column name = second table name.column name*/

--inner join: Returns only matching rows between both tables. non matching rows will be eliminated
select name, gender, salary, department_name
from tbl_employee
inner join tbl_department
on tbl_employee.departmentid = tbl_department.id

--Left join / left outer join : Returns all the matching rows + non matching rows from the left table
select name, gender, salary, department_name
from tbl_employee
left join tbl_department
on tbl_employee.departmentid = tbl_department.id

--Right join / right outer join: Returns all the matching rows + non matching rows from the right table
select name, gender, salary, department_name
from tbl_employee
Right join tbl_department
on tbl_employee.departmentid = tbl_department.id

--Full join/ Full Outer Join : Returns all rows from the left and right tables, including non matching rows
select name, gender, salary, department_name
from tbl_employee
Full outer join tbl_department
on tbl_employee.departmentid = tbl_department.id

--Cross join: produces the cartesian product of the 2 tables involved in the join 
select name, gender, salary, department_name
from tbl_employee
cross join tbl_department

--Advanced or Intelligent joins in sql
/* select        column list  
  from           first table name
  join name      second table name
  on first table name.column name = second table name.column name
  where          second table name. column is null*/

--Advanced left join: Retrive only non matching rows from the left table.
select name, gender, salary, department_name
from tbl_employee
left join tbl_department
on tbl_employee.departmentid = tbl_department.id
where tbl_department.id is null

-- E and D are alias names
select name, gender, salary, department_name
from tbl_employee E
left join tbl_department D
on E.departmentid = D.id
where D.id is null

--Advanced Right join: Retrive only non matching rows from the Right table.
select name, gender, salary, department_name
from tbl_employee 
right join tbl_department 
on tbl_employee.departmentid = tbl_department.id
where tbl_employee.departmentid is null

--Advanced Full join: Retrive only non matching rows from the both left and Right tables.
select name, gender, salary, department_name
from tbl_employee
full outer join tbl_department
on tbl_employee.departmentid = tbl_department.id
where tbl_employee.departmentid is null
or tbl_department.id is null

/*select name, gender, salary, department_name
from tbl_employee
cross join tbl_department
where tbl_employee.departmentid is null
or tbl_department.id is null*/

--SELF JOIN : it is not a diferent type of join
use selfj
select * from tbemployee
select * from tbmanager
-- left outer join
select E.name as employee ,M.name as manager
from tbemployee E
left outer join tbemployee M
on E.managerid = M.employeeid

-- Right join
select E.name as employee ,M.name as manager
from tbemployee E
Right outer join tbemployee M
on E.managerid = M.employeeid

--Full join
select E.name as employee ,M.name as manager
from tbemployee E
Full outer join tbemployee M
on E.managerid = M.employeeid

--cross join
select E.name as employee ,M.name as manager
from tbemployee E
cross join tbemployee M




