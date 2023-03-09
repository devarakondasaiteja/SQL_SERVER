create database parlour_customer
use parlour_customer
create table person_info
(
customer_id int,
customer_name varchar(50),
entry_date int,
entry_time int,
adderess varchar(50),
service_product char(5),
service_type varchar(50),
product_type varchar(50),
price int
)
select * from person_info
insert into person_info values(1,"radha", 12/10/2019, "11:00am" , "warangal", "service"," eye brows", "no", 50)
alter table person_info add age int
alter table person_info add entry_time time
alter table person_info add entry_date date 
alter table person_info drop column product_type
alter table person_info drop column entry_date
insert into person_info values (1,'radha', 'warangal','eyebrows',50,33,'2019-11-21','11:12:15')
delete from person_info where customer_name = 'manu'
insert into person_info values (10,'puppy', 'vemulawada','pedicure',100,27,'2024-07-12','04:25:15')
select * from person_info
update person_info set customer_name = 'varsha' where customer_name ='rajii'
update person_info set customer_name = 'vishu',adderess = 'hyderabad' where customer_id = 2
alter table person_info change column adderess  districts;
sp_rename 'person_info.adderess','districts','column'  
sp_rename 'person_info.customer_id', 'id','column'
update person_info set districts = 'karimnagar' where id=6
select distinct districts from person_info
select * from person_info where districts = 'karimnagar' 
select * from person_info where districts = 'vemulawada' 
select distinct service_type from person_info



