--ankit
create database row_column
use row_column
create table R_and_C
(
emp_id int not null,
salary_component_type nvarchar(50) not null,
val int not null
)
insert into r_and_c values (1,'salary', 10000)
insert into r_and_c values (1,'bonus', 5000)
insert into r_and_c values (1,'hike_percent', 10)
insert into r_and_c values (2,'salary', 15000)
insert into r_and_c values (2,'bonus', 7000)
insert into r_and_c values (2,'hike_percent', 8)
insert into r_and_c values (3,'salary', 12000)
insert into r_and_c values (3,'bonus', 6000)
insert into r_and_c values (3,'hike_percent', 7)
select * from r_and_c

select emp_id 
, case when salary_component_type = 'salary' then val end as salary
, case when salary_component_type = 'bonus' then val end as bonus
, case when salary_component_type = 'hike_percent' then val end as hike_percent
from r_and_c

select * from r_and_c
select emp_id 
,sum(case when salary_component_type = 'salary' then val end) as salary
,sum(case when salary_component_type = 'bonus' then val end) as bonus
,sum(case when salary_component_type = 'hike_percent' then val end) as hike_percent
from r_and_c
group by emp_id

select * from r_and_c 
select emp_id 
,sum(case when salary_component_type = 'salary' then val end) as salary
,sum(case when salary_component_type = 'bonus' then val end) as bonus
,sum(case when salary_component_type = 'hike_percent' then val end) as hike_percent
into r_and_c_pivot
from r_and_c
group by emp_id

select * from (
select emp_id ,'salary' as salary_coponent_type, salary as val from r_and_c_pivot
union all
select emp_id ,'bonus' as salary_coponent_type, bonus as val from r_and_c_pivot
union all
select emp_id ,'hike_percent' as salary_coponent_type, hike_percent as val from r_and_c_pivot
)a
order by emp_id

self join 
use w_h
select * from emp
select e.emp_id ,e.emp_name ,m.emp_name as manager_name
from emp e
inner join emp m 
on e.manager_id = m.emp_id

select * from emp
select e.emp_id ,e.emp_name ,m.emp_name as manager_name, e.salary, m.salary as manager_salary
from emp e
inner join emp m 
on e.manager_id = m.emp_id

select * from emp
select e.emp_id ,e.emp_name ,m.emp_name as manager_name, e.salary, m.salary as manager_salary
from emp e
inner join emp m 
on e.manager_id = m.emp_id
where e.salary > m.salary