use avisoft;
create table Q2_products(
product_id int ,
low_fats enum ('Y' ,'N'),
recyclable enum ('Y' ,'N'));
insert into Q2_products(product_id , low_fats ,recyclable)
values (0,'Y','N'),
(1,'Y','Y'),
(2,'N','Y'),
(3,'Y','Y'),
(4,'N','N');
select product_id 
from Q2_products
where low_fats ='Y' and recyclable ='Y';
