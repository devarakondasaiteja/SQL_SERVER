--DATE_TIME  FUNCTIONS

select * from tbldate_time

insert into tbldate_time values(GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE(),GETDATE())
--UTC - coordinate universal time

select GETDATE(), ' GETDATE()'                      -- commenly used
select CURRENT_TIMESTAMP, 'CURRENT_TIMESTAMP'       --ANSI SQL equivalant to getdate
select SYSDATETIME(), 'SYSDATETIME()'               --more fractional seconds precision
select SYSDATETIMEOFFSET(),  'SYSDATETIMEOFFSET()'  --more fractional seconds precision+time zone offset
select GETUTCDATE(),  'GETUTCDATE()'                --UTC date time
select SYSUTCDATETIME(),  'SYSUTCDATETIME()'        -- UTC date and time, with more fractional seconds precision

--date, day, month, year and datename 
--isdate() -checks if the given value is a valid date time or returns 1-success, 0-failure
select ISDATE('programm')   -- returns 0
select ISDATE(getdate())     -- return 1
select ISDATE('2022-07-27 12:03:04.135')  -- returns 1
select ISDATE('2022-07-27 12:03:04.1355323')   -- returns 0

--DAY()
select DAY(GETDATE()) -- return the curent date, day number of the month
select DAY('07/30/2022')  -- return 30

-- MONTH()
select MONTH(GETDATE())  -- returns the current date, month number of the year 
select MONTH('07/30/2022')  -- return 07

-- year()
select YEAR(GETDATE()) --returns the current date, the year number
select YEAR('07/27/2022') -- returns 2022

--DATENAME(date part, date)- retuns string that reoresents part of date
--having two parameters datepart specifies and actual date.
select DATENAME(DAY, '2022-07-28 12:15:34.456')     -- return 28
select DATENAME(weekday, '2022-07-28 12:15:34.456')  -- returns Wednesday
select DATENAME(weekday, '2022-07-27 12:15:34.456')  --Thursday
select DATENAME(year, '2022-07-27 12:15:34.456')   ---returns 2022  
select DATENAME(month, '2022-07-27 12:15:34.456')  --returns july

select * from employee_dob
select name, date_of_birth,
       day(date_of_birth) as DayNumber,
       datename(weekday,date_of_birth) as [Day],
       Month(date_of_birth) as MonthNumber,
	   DateName(Month, date_of_birth) as [MonthName],
	   year(date_of_birth) as [year]
from  employee_dob

--datepart, dateadd and dateoff functions
--DatePart(datepart, date) --rturns an integer representing the specified gatepart.
--similar to Dataname(),DateName returns nvarchar, DataPart returns an integer
select DATENAME(weekday, '2022-07-27 12:15:34.456')  --Wednesday
select DATEPART(weekday, '2022-07-27 12:15:34.456')  --4 (1-sunday,2-monday,3-tuesday,4-wednesday----)q2222222222222222

--DATEADD(datepart, numbertoadd, date)- returns the datetime,after adding specified number to add, given date.

select Dateadd(Day, 2, '2022-07-29 18:19:34.567') --returns 2022-07-31 18:19:34.567(add 2 days)
select Dateadd(Day, -2, '2022-07-29 18:19:34.567') -- returns 2022-07-27 18:19:34.567(subtract 2 days)

-- DATEDIFF(datapart, startdate,enddate)
--returns the count of the specified datepart boundaries crossed between the specified start date and end date.
select DATEDIFF(MONTH, '07/28/2022','08/02/2022')  --return 1 month diff
select DATEDIFF(DAY, '07/28/2022','08/02/2022')    -- return 5 days diff 
select DATEDIFF(year, '07/28/2022','08/02/2025')    -- return 3 years diff 

select * from employee_dob
-- find out the age
DECLARE @DOB datetime, @tempdate datetime, @years int, @months int, @days int
set @dob = '06/12/1998'   -- retuns 24 years 1 month 16 days
select @tempdate = @dob

select @years = datediff(year, @tempdate, getdate())-
               case
			       when (month(@dob) > month(getdate())) OR
				    (month(@dob) = month(getdate()) and day(@dob)> day(getdate()))
				   then 1 else 0
				End
select @tempdate = dateadd(year, @years, @tempdate)

select @months = datediff(month, @tempdate, getdate())-
                case
				    when day(@dob) > day(getdate())
					then 1 else 0
				end
select @tempdate = dateadd(month, @months, @tempdate)
select @days = datediff(day, @tempdate, getdate())
select @years as years , @months as months, @days as [days]

-- FUNCTION CREATION-- to return age

select * from employee_dob
insert into employee_dob (name ,date_of_birth) values ('manu','1998-02-16 11:12:32.345')
insert into employee_dob (name ,date_of_birth) values ('nava','1998-10-25 11:12:32.345')
insert into employee_dob (name ,date_of_birth) values ('manu','1998-06-09 11:12:32.345')

select name,date_of_birth, dbo.fnComputeAge(date_of_birth) as Age from employee_dob
select dbo.fnComputeAge('11/07/2020')
create function fnComputeAge(@dob datetime)
returns nvarchar(50)
as
begin

DECLARE  @tempdate datetime, @years int, @months int, @days int
select @tempdate = @dob

select @years = datediff(year, @tempdate, getdate())-
               case
			       when (month(@dob) > month(getdate())) OR
				   (month(@dob) = month(getdate()) and day(@dob)> day(getdate()))
				   then 1 else 0
				end
select @tempdate = dateadd(year, @years, @tempdate)

select @months = datediff(month, @tempdate, getdate())-
                case
				    when day(@dob) > day(getdate())
					then 1 else 0
				end
select @tempdate = dateadd(month, @months, @tempdate)
select @days = datediff(day, @tempdate, getdate())
     declare @age nvarchar(50)
	 set @age = Cast(@years  as nvarchar(4))+ ' years ' + Cast(@months as nvarchar(2)) +' months ' + Cast(@days  as nvarchar(2)) +' days old '

	 return @age 
End

-- CAST AND CONVERT -- TO CONVERT ONE DATATYPE TO ANOTHER
--CAST (expression as data_type[( length )])  -- length is optional
--convert (data_type [( length )], expression [' style])
select * from employee_dob

select name, date_of_birth, CAST( date_of_birth as nvarchar) as convertedDOB from employee_dob
select name, date_of_birth, CONVERT (nvarchar, date_of_birth) as convertedDOB from employee_dob

--STYLE AND DATEFORMAT : 101--MM/DD/YYYY , 102 --YY.MM.DD, 103--DD/MM/YYYY, 104--DD.MM.YY, 105--DD-MM-YY 

select name, date_of_birth, CONVERT (nvarchar, date_of_birth, 105) as convertedDOB from employee_dob

select convert (varchar(10), getdate(),102) -- returns 2022.07.29
select convert (date, getdate()) -- return 2022-07-29 --sql2008 date datatype is introduced
select cast (getdate() as date)  -- return 2022-07-29

-- to control the formating of the datepart, datetime has to be converted to nvarchar using the style provided
--when converting to date datatype, the convert() function will ignore the style parameter.

select * from employee_dob
--concatenate id(int) and name(nvrchar())
select name, date_of_birth, date_of_birth + ' - ' + cast(name as nvarchar) as name_id from employee_dob

select * from tbl_registrations

select cast(registered_date as date) as registraiondate, count(id) as totalregistrations
from tbl_registrations
group by cast(registered_date as date)

select registered_date as registrationdate, count(id) as totalregistrations
from tbl_registrations
group by registered_date


/*diiference between cast - convert
 CAST is based on ANSI standards and convert to sql server .
so if portability is a concern and if you want to use the script with other database applications,use cast()
COVERT provides more fliexibiity than cast.
ex: its possible to control hoe you want datetime datatypes to be conveted using styles with convert function.
general to use cast(), unless you want to take advantages of the style functionality in convert()*/