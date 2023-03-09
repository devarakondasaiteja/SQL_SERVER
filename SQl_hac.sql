select * from triangles
select
case
when ((A+B <= C) OR (B+C <= A) OR (A+C <= B)) THEN 'Not A Triangle'
when ((A=B) AND (B=C)) then 'Equilateral'
when ((A=B ) OR (B=C ) OR (C=A)) then 'Isosceles'
when  NOT ((A+B <= C) OR (B+C <= A) OR (A+C <= B)) then 'Scalene'
end
from Triangles


DECLARE @a INT = 5                     
WHILE (@a > 0) 
BEGIN
   PRINT REPLICATE('* ',@a) 
   SET @a = @a - 1
END

DECLARE @a INT = 1                    
WHILE (@a < 6) 
BEGIN
   PRINT REPLICATE('* ',@a) 
   SET @a = @a + 1
END



