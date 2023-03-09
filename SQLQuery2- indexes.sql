create database temp_table
select * from #temptable_1

create table #temp1
(
id int,
name varchar(10)
)
insert into #temp1 values(1,'aaa')
insert into #temp1 values(2,'hhh')
insert into #temp1 values(3,'kkk')
select * from #temp1

create table #temp2 (id int,name nvarchar(10),gender varchar(10))
insert into #temp2 values(1,'aaa','female')
insert into #temp2 values(2,'nnn','female')
insert into #temp2 values(3,'lll','male')

select * from #temp2
-- the IDENTITY keyword to perform an auto-increment feature.
-- the starting value for IDENTITY is 1, and it will increment by 1 for each new record.

create database #temptrail
create table  student(id int identity(1,1),name nvarchar(10),age int)
insert into student values('abc',12)
insert into student values('xyz',15)
insert into student values('pqr',13)

select * from student

create table  customer(id int identity(1,2),name nvarchar(10),age int)
insert into customer values('abc',20)
insert into customer values('xyz',25)
insert into customer values('pqr',27)

select * from customer
create index  name_id on customer (name)
select * from customer
DROP INDEX customer.customer1
CREATE INDEX index_name ON table_name (column1, column2, ...)
DROP INDEX table_name.index_name; 