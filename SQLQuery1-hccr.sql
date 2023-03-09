
select * from [dbo].[employee_tbl]
select firstname from [dbo].[employee_tbl] where empid % 2 = 0

select * from [dbo].[customer_table]

select top 2 city, len(city) from [dbo].[customer_table] order by len(city),city
select distinct top 2 city, len(city) from [dbo].[customer_table] order by len(city),city

select top 3 city, len(city) from [dbo].[customer_table] order by len(city) desc,city
select distinct top 3 city, len(city) from [dbo].[customer_table] order by len(city) desc,city

select distinct top 9 (city) from [dbo].[customer_table] 
select * from [dbo].[customer_table] 

select distinct top 2 city, len(city) from [dbo].[customer_table] order by len(city),city
select distinct top 3 city, len(city) from [dbo].[customer_table] order by len(city) desc,city

select * from (
       select top 2 city, LEN(city) cityLength from [dbo].[customer_table] order by cityLength ASC,city ASC) Minimum
       UNION
select * from (
       select top 3 city, LEN(city) cityLength from [dbo].[customer_table] order by cityLength desc, city ASC) Maximum

select distinct city from [dbo].[customer_table] where city  like 'a%' or city like 'h%'
select city from [dbo].[customer_table] where city  like 'a%' or city like 'h%'
select city from [dbo].[customer_table] where city  like '[a,h]%'
select distinct city from [dbo].[customer_table] where city  like '[a,h]%'
select distinct city from [dbo].[customer_table] where city  like '%[a,d]'
select distinct city from [dbo].[customer_table] where city  like '[a,d]%'

select distinct city from [dbo].[customer_table] where city  like '%[^a,d]'
select distinct city from [dbo].[customer_table] where city  like '[^a,d]%'

select distinct city from [dbo].[customer_table] where city  like '[^a,d]%[^a,d]'
select distinct city from [dbo].[customer_table] where city not like '[a,d]%' or city not like '%[a,d]';

select * from [dbo].[customer_table] where  city like 'a%' or city like 'b%' or city like 'h%'