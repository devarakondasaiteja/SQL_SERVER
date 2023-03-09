--VIEW -- a view is nothing more than a saved sql query. a view can also be considered as a virtual table.
/*adv--used to reduce the complexity of the database schema
- used as a mechanism to implement row and column level security.
- used to present aggregated data and hide detailed data
modify a view = alter view statement
drop a view = drop view view name*/
select * from manager
select * from employee
select manager_name,emp_name,salary
from manager
join employee
on manager.dept_id = employee.dept_id

create view vwmanagerbyemployee
as
select manager_name,emp_name,salary
from manager
join employee
on manager.manager_id = employee.manager_id

select * from vwmanagerbyemployee
sp_helptext vwmanagerbyemployee  --used to reduce the complexity of the database schema

create view vwmanager   --used as a mechanism to implement row(m2) and column(delete salary) level security.
as
select manager_name,emp_name,salary
from manager
join employee
on manager.manager_id = employee.manager_id
where manager.manager_id = 'M2'
select * from vwmanager

/*create view vwsummarizeddata
as
select manager_name,count(manager_id) as totalmanager
from manager
join employee
on manager.dept_id = employee.dept_id
group by manager_name*/

create view vwemployee
as
select manager_name,emp_name
from manager
join employee
on manager.manager_id = employee.manager_id
select * from vwemployee
sp_helptext vwemployee

update vwemployee set manager_name = 'chikky' where emp_name = 'sara'
--delete from vwemployee where emp_name = 'sri'
--insert into vwemployee values( 'chotu' , 'mottu') 


