-- SQL COMMANDS
--CREATE --(create a database) -- CREATE DATABASE DATABASE_NAME
create database customer
use customer

-- ALTER-- (modify database name)-- ALTER DATABASE OLD_DATABASE_NAME MODIFY NAME = NEW_DATABASE_NAME
ALTER DATABASE CUSTOMER MODIFY NAME=CUSTOMER_INFO

use CUSTOMER_INFO
create table customer_table
(
NAME NVARCHAR(50) NOT NULL,
PHONE_NUMBER INT NOT NULL,
CITY NVARCHAR(50) NOT NULL,
EMAIL NVARCHAR(50) NOT NULL
)

-- INSERT--(Insert data into a table)--The INSERT INTO statement is used to insert new records in a table.
--INSERT INTO TABLE_NAME(COLUMN_NAMES) VALUES (VALUES)
-- (OR) INSERT INTO TABLE_NAME  VALUES ()

INSERT INTO CUSTOMER_TABLE(NAME,PHONE_NUMBER,CITY,EMAIL) VALUES ('ANUU', 990726796,'CHENNAI','der@.COM')

INSERT INTO CUSTOMER_TABLE VALUES ('ANUU', 990726796,'CHENNAI','der@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('MARY', 524322533,'BANGLORE', 'MARR.12@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('JANU', 354634231, 'PUNE','JAN12@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('RAJU', 354642357, 'AHMEDABAD','RAJ314@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('SARA', 346254546,'MUMBAI','SARA23@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('CHOTU', 89564354,'DELHI','CHOTU.CHOTU23@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('BHARU',445657766,'KARNATAKA','BHARU.1231@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('GIRI', 983647374,'HYDERABAD','GIRI@GIRI.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('CHIKKY',982762339,'JAIPUR','CHIK.CHIK@12.COM') 
INSERT INTO CUSTOMER_TABLE VALUES ('PRIYA' ,896526272,'MAHARASTA','PRIYA.123@.COM')
INSERT INTO CUSTOMER_TABLE VALUES ('RANI' ,354643252, 'PUNE','RANI345@.COM')

--The DELETE statement is used to delete existing records in a table.
-- DELETE (delete a row with where condition)-- DELETE FROM TABLE_NAME WHERE CONDITION
-- (without where condition it deletes all rows) -- DELETE FROM TABLE_NAME
DELETE FROM CUSTOMER_TABLE WHERE NAME='PRIYA'

--UPDATE(update exsiting data within a table)
--UPDATE TABLE_NAME SET COLUMN = VALUE WHERE CONDITION
--UPDATE TABLE_NAME SET COLUMN = VALUE
/*The UPDATE statement is used to modify the existing records in a table.
the WHERE clause in the UPDATE statement. The WHERE clause specifies which records that should be updated.
If you omit the WHERE clause, all records in the table will be updated!*/

UPDATE CUSTOMER_TABLE SET CITY='HYDERABAD' WHERE NAME='ANUU'
UPDATE CUSTOMER_TABLE SET NAME='ANUU' WHERE CITY='HYDERABAD' -- MULTIPLE ROWS EFFECTED
UPDATE CUSTOMER_TABLE SET NAME='SUNNY'  -- all rows updated as sunny

-- SELECT 

SELECT * FROM CUSTOMER_TABLE WHERE CITY='PUNE'
SELECT * FROM CUSTOMER_TABLE WHERE CITY='HYDERABAD'
SELECT * FROM CUSTOMER_TABLE WHERE CITY='HYDERABAD' OR CITY='PUNE'
SELECT * FROM CUSTOMER_TABLE WHERE CITY='HYDERABAD' AND NAME='ANUU'
SELECT * FROM CUSTOMER_TABLE WHERE NOT CITY='HYDERABAD'
SELECT * FROM CUSTOMER_TABLE WHERE NOT CITY='HYDERABAD' AND NOT CITY='PUNE'
SELECT * FROM CUSTOMER_TABLE WHERE NAME = 'RANI' AND (CITY='HYDERABAD' OR CITY='PUNE')
SELECT * FROM CUSTOMER_TABLE WHERE CITY<> 'HYDERABAD' --USING (<> OR !=)

SELECT NAME FROM CUSTOMER_TABLE ORDER BY NAME
SELECT * FROM CUSTOMER_TABLE ORDER BY NAME DESC
SELECT CITY FROM CUSTOMER_TABLE ORDER BY CITY
SELECT * FROM CUSTOMER_TABLE ORDER BY NAME ASC,CITY DESC

SELECT DISTINCT CITY FROM CUSTOMER_TABLE 
SELECT DISTINCT NAME,CITY FROM CUSTOMER_TABLE 

SELECT COUNT (DISTINCT CITY) FROM CUSTOMER_TABLE 
SELECT COUNT (CITY) FROM CUSTOMER_TABLE 

SELECT NAME,CITY FROM CUSTOMER_TABLE
SELECT * FROM CUSTOMER_TABLE WHERE CITY ='H'%

ALTER TABLE CUSTOMER_TABLE ADD AGE INT NULL 
ALTER TABLE CUSTOMER_TABLE ADD AGE INT NULL  DEFAULT 10 WITH VALUES 
ALTER TABLE CUSTOMER_TABLE ALTER COLUMN AGE NOT NULL
ALTER TABLE CUSTOMER_TABLE DROP COLUMN AGE
INSERT INTO CUSTOMER_TABLE (AGE) VALUES ('23'),('45'),('24'),('56'),('41'),('28'),('34'),('12'),('18'),('20')
INSERT INTO CUSTOMER_TABLE VALUES ('23'),('45'),('24'),('56'),('41'),('28'),('34'),('12'),('18'),('20')
INSERT INTO CUSTOMER_TABLE AGE VALUES 12,23,45,7,88,9O,34,56,34,20
UPDATE CUSTOMER_TABLE SET AGE = '23','24','56','41','28','34','12','18','20'  WHERE NAME = 'MARY','JANU','RAJU','ANUU','SARA','CHOTU','BHARU','GIRI','CHIKKY','RANI'
UPDATE CUSTOMER_TABLE SET AGE = '10','23','24','56','41','28','34','12','18','20'
UPDATE CUSTOMER_TABLE SET AGE =(12,56) WHERE NAME= ('JANU' 'RAJU')

SELECT * FROM CUSTOMER_TABLE
select top 2 * from CUSTOMER_TABLE
select top 5  * from CUSTOMER_TABLE
select top 20 percent * from CUSTOMER_TABLE
select * from customer_table