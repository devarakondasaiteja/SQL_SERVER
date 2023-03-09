create database t
use t
create table t1
(
id1 int
)
insert into t1 values(1);
insert into t1 values(1);
insert into t1 values(2);
create table t2
(
id2 int
)
insert into t2 values(1);
insert into t2 values(1);
insert into t2 values(1);
insert into t2 values(3);

select* from t1
select * from t2

select id1,id2
from t1
left join t2
on t1.id1 = t2.id2

select id1,id2
from t1
right join t2
on t1.id1 = t2.id2

select id1,id2
from t1
inner join t2
on t1.id1 = t2.id2

select id1,id2
from t1
full outer join t2
on t1.id1 = t2.id2

select id1,id2
from t1
cross join t2

select id1,id2
from t1
left join t2
on t1.id1 = t2.id2
where t2.id2 is null

select id1,id2
from t1
right join t2
on t1.id1 = t2.id2
where t1.id1 is null

select id1,id2
from t1
full outer join t2
on t1.id1 = t2.id2
where t1.id1 is null
or t2.id2 is null

select id1,id2
from t1
cross join t2
where t1.id1 is null
or t2.id2 is null




