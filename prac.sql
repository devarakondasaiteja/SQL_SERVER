
select * from people
select * from people where f2 = 'west'
select f2 from people where f2 = 'west'
select f1 , substring(charindex(' ', f1 +  ' ')-1))as firstname

select * from people string_split(f1, ' ')
SELECT * FROM people CROSS APPLY STRING_SPLIT(f1, ' ')




