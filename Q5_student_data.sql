use avisoft ;
create table courses(
student varchar(255),
class varchar(255));
insert into courses(student , class)
values ('A' ,'Math'),
('B' ,'english'),
('C' ,'math'),
('D' ,'biology'),
('E' ,'Math'),
('F' ,'computer'),
('G' ,'Math'),
('H' ,'Math'),
('I' ,'Math');

select class 
from courses 
group by class 
having count(student)>=5;