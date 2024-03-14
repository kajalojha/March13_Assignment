use avisoft ;
create table triangle (
x int ,
y int ,
z int );
insert into triangle(x,y,z)
values (13,15,30),
(10,20,15);
select x,y,z,
case
when (x+y)>z and (y+z)>x and (x+z)>y then 'yes'
else 'no'
end as triangle 
from triangle;
