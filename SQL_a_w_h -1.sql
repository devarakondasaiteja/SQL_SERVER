CREATE DATABASE W_H
use w_h
CREATE TABLE EMP
(
emp_id int not null,
emp_name nvarchar(50) not null,
department_id int not null,
salary int not null,
manager_id int not null
)

insert into emp values(1,'anu' , 100, 10000, 4)
insert into emp values(2,'giri' , 100, 15000, 5)
insert into emp values(3,'ram' , 100, 10000, 4)
insert into emp values(4,'rakshu' , 100, 5000, 2)
insert into emp values(5,'babby' , 200, 12000, 6)
insert into emp values(6,'chinnu' , 200, 12000,2)
insert into emp values(7,'channy' , 200, 9000, 2)
insert into emp values(8,'chui' , 200, 5000, 2)
select * from emp where salary > 10000
--HAVING CLAUSE
/*SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s) */q
select department_id, avg(salary) 
from emp 
group by department_id
having avg(salary) > 9000

select department_id, avg(salary) 
from emp 
where salary>10000
group by department_id
having avg(salary) > 12000

select * from emp





select * from s_info
select SS_Name, Age from s_info where Age > 15
SELECT SS-Name, Age FROM s_info 
WHERE Age >=18

SELECT Age, COUNT(Roll_No) AS No_of_Students 
FROM s_info GROUP BY Age
HAVING COUNT(Roll_No) > 1 
