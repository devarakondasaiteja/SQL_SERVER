create DATABASE std_details
ALTER DATABASE std_details modify name= SAMPLE
ALTER DATABASE SAMPLE modify name= SAMPLE1
create Table tbl_gender
(
ID int NOT NULL PRIMARY KEY,
GENDER nvarchar(50) NOT NULL
)

Insert into tbl_gender values(3,'unknown')
update tbl_gender set GENDER='Female' where ID=1
update tbl_gender set GENDER='Male' where ID=2
select * from tbl_gender
select * from tbl_person
delete from tbl_gender where ID=6
delete from tbl_person where ID= 6
Alter Table tbl_person 
Alter column GENDER ID '1';

Alter table tbl_person add constraint tbl_person_GENDERID_FK
foreign key (GENDERID) references tbl_gender(ID)
ALTER TABLE tbl_person MODIFY GENDER ID INT;

ALTER table tbl_person  modify name= SAMPLE1


