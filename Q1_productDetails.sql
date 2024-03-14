use avisoft;
CREATE TABLE customer (
    customer_id INT,
    product_key INT,
    FOREIGN KEY (product_key) REFERENCES Q1_products(product_key) ON DELETE CASCADE
);
insert into customer (customer_id , product_key)
values(1,5),
(2,6),
(3,5),
(3,6),
(1,6);
create table Q1_products(
product_key int primary key );
insert into Q1_products(product_key)
values(5),(6);
select customer_id from customer
group by customer_id
having count(distinct product_key) = (select count(*)from Q1_products);