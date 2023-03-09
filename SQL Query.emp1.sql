use employee
alter table employee_tbl add DOB date  -- add dob column

sp_rename 'employee_tbl.aadharno', 'ration_no','column' -- rename the column name

alter table employee_tbl alter column city int; -- change the data type

alter table employee_tbl drop column Address
alter table employee_tbl add ad1 int
alter table employee_tbl drop column ad1 -- drop a column
select * from employee_tbl


alter table employee_tbl add address varchar