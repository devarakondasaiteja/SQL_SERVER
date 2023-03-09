--STORED PROCEDURE
create database sp_employee
use sp_employee
create table employee
(
id int,
name varchar(50),
gender varchar(50),
department_id int
)
insert into employee values(10,'baru','male','2')
select * from employee

create procedure spgetemployee
as
begin
     select name,gender from employee 
end

spgetemployee --exec spgetemployee or --execute spgetemployee
exec spgetemployee

-- stored procedure with parameter

create proc spgetemployeebygenderanddepartment_id
@gender nvarchar(20),
@department_id int
as
begin
    select name, gender,department_id
	from employee
	where gender = @gender
	and department_id= @department_id
end

spgetemployeebygenderanddepartment_id @department_id = 1, @gender = 'male'

sp_helptext spgetemployee
alter procedure spgetemployee
as
begin
     select name,gender 
	 from employee order by name
end
spgetemployee

--with encryption -- this script can be locked
create proc spgetemployeebygenderanddepartment_id
@gender nvarchar(20),
@department_id int
as
begin
    select name, gender,department_id
	from employee
	where gender = @gender
	and department_id= @department_id
	with encryption
end

--stored procedure with output parameter

create procedure spgetemployeecountbygender
@gender nvarchar(20),
@employeecount int output
as
begin
     select @employeecount = count(id) from employee where gender = @gender
end

-- execute with output parameter
declare @totalcount int
execute spgetemployeecountbygender 'male' , @totalcount out
if (@totalcount is null)
    print '@totalcount is null'
else
   print '@totalcount is not null'
print @totalcount
--it will display the 6 males
--(or)
declare @totalcount int
execute spgetemployeecountbygender @employeecount= @totalcount out, @gender = 'male'
print @totalcount
--(or)
declare @totalcount int
execute spgetemployeecountbygender 'male' ,@employeecount= @totalcount out  
print @totalcount

sp_help spgetemployeecountbygender   -- view the information aboutthe sp like parameters names,datatypes the database objects

sp_helptext spgetemployeecountbygender   --view the text of stored procedures

sp_depends spgetemployeecountbygender  -- it is depends on id and gender columns

sp_depends employee --it depends procedures on dbo.spgetemployee,dbo.spgetemployeebygenderanddepartment_id anddbo.spgetemployeecountbygender