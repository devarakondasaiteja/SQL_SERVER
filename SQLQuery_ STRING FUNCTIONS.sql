--STRING-FUNCTIONS 
--(ASCII, CHAR, LTRIM, RTRIM, UPPER, LOWER, REVERSE, LEN,
--LEFT, RIGHT, CHARINDEX, SUBSTRING, REPLICATE, SPACE, PATINDEX, REPLACE, STUFF)

-- ASCII(Character-Expression) - Returns the ascii code of the given character expression
select ASCII('A')  -- a values is 65
select ascii('Z')
/*CHAR(Integer _Expression)- converts an int ASCII code to a character.
integer expression should be between 0 and 255.*/

select char(65) -- 65 value char is A

--print A to Z
declare @start int
set @start = 65
while(@start <=90)
begin
     print char(@start)
	 set @start = @start+1
end
-- print a to z
select ASCII('a') --97
select ASCII('z') -- 122

declare @start int
set @start = 97
while(@start <=122)
begin
     print char(@start)
	 set @start = @start+1
end

-- print 0 to 9
select ASCII('0') -- 0 = 48
select ASCII('9')-- 0 =  57
declare @start int
set @start = 48
while(@start <=57)
begin	f
     print char(@start)
	 set @start = @start+1
end

--LTRIM (Character-Expression)-remove blanks on the left handside of the given character expression.
select LTRIM('     Hello')  --Hello

--RTRIM (Character-Expression)-remove blanks on the right handside of the given character expression.
select RTRIM('Hello    ')  --Hello

use str_fun
select * from str_table
select LTRIM (First_name) as First_name, middle_name, last_name,
RTRIM(LTRIM(First_name)) + ' ' + RTRIM(LTRIM(middle_name)) + ' ' + RTRIM(LTRIM(last_name)) as Full_name
from str_table

--LOWER(Character_Expression)--converts all characters in the given charecter_expresson to lower case leterrs.
--UPPER(Character_Expression)--converts all characters in the given charecter_expresson to upper case leterrs.

select upper(LTRIM (First_name)) as First_name, middle_name, lower(last_name) as Last_name,
upper(RTRIM(LTRIM(First_name))) + ' ' + RTRIM(LTRIM(middle_name)) + ' ' + RTRIM(LTRIM(last_name)) as Full_name
from str_table

select upper(Last_name) as last_name from str_table

--REVERSE( 'Any_String_Expression)- reverse all the characters in the given string expression 

select Reverse(upper(First_name)) as First_name from str_table

--LEN(String_Expression) -- returns counts of total characters,balnk in the begin or middle it can be count.
                         --excluding the blanks at the end of the expression.

select First_name, len(First_name) as total_characters from str_table
select first_name,len(LTRIM(first_name)) as total from str_table

--LEFT(chracter_expression, integer_expression)-returns the specified number of charecters from the left hand side.
--RIGHT(chracter_expression, integer_expression)-returns the specified number of charecters from the right hand side.

'ABCDE'
select LEFT('ABCDE',3)
select RIGHT('ABCDE',3)

--CHARINDEX(Expression_to_find, expression to search, start location)-returns the starting position of the specified expression in a character string
select CHARINDEX('@','sara@aaa.com',1) -- @ index is 5.

-- SUBSTRING(expression,start,length)--return substring (part of string) from the given expression.
select SUBSTRING('sara@aaa.com', 6, 7)   -- returns aaa.com
select SUBSTRING('sunny@123.com', 7, 8) -- returns 123.com
select SUBSTRING('sunny@123.com', CHARINDEX('@','sunny@123.com') + 1,
LEN('sunny@123.com') - CHARINDEX('@','sunny@123.com'))

select* from customer_table

select SUBSTRING(email, CHARINDEX('@',email) + 1,        --returns .com 8
LEN(email) - CHARINDEX('@',email)) as EMAILDOMAIN,       --       12.com 1
COUNT(EMAIL) as total                                    --     giri.com 1
from customer_table
group by SUBSTRING(email, CHARINDEX('@',email) + 1,
LEN(email) - CHARINDEX('@',email))

--REPLICATE(string_to_replicated, number_to_replicate)
-- it repeats the given string for specified no of times
select REPLICATE('STATISTICS  ', 3)   

select name,
SUBSTRING (EMAIL, 1, 2) + REPLICATE('*',5) +
SUBSTRING (EMAIL, CHARINDEX('@',email),
LEN(email) - CHARINDEX('@',email)+1) as EMAIL 
from customer_table

--SPACE(number_of_space)- returns no of spaces, specified by the no of spaces arguement
select space(5)

select * from customer_table
select name+ space(5) + city as information from customer_table

--PATINDEX('%PATTERN%', EXPRESSION)
/*Returns the starting position of the first occuranceof a pattern in a specified expression.
it takes two arguement, the pattern to be searched and expression,patindex()is simmilar to charindex()
charindex we cannot use wildcards,where patindex provides this capability.
if the specified pattern is not found, patindex returns zero.*/

select email, patindex('%@.com', email) as firstoccurance
from customer_table
where patindex('%@.com', email) > 0 

--REPLACE(String expression, pattern, replacement value)
--replace all occurances of a specified string value with another string value.
--all .com strings replaced to .net

select email, replace (email, '.com', '.net') as converted_email from customer_table

--STUFF(original expression, start, length, replacement expression)
--insert replacementexpressions,start position specified,removing the character specified useing length parameter
select name, city, email,
STUFF(email, 2, 3,'*****') as stuffedemail from customer_table






















































