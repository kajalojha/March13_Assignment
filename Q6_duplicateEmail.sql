use avisoft ;
create table person (
id int ,
email varchar(255));
insert into person (id , email)
values (1,'a@b.com'),
(2,'c@d.com'),
(3,'a@b.com');
select email
from person
group by email
having count(email)>1;