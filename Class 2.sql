

-- The Update Statement: This is used to update or make changes to values on a table


--1) To change the a customers first name from Babara to Barnabas

update customers
set first_name = 'Barnabas'
where first_name = 'Babara'

-- To confirm,

select first_name
from customers
where first_name = 'Barnabas'

---- 2) Write a query to update Ilene Dowson location to - 2 shomolu street, lagos, LOS 

select * 
from customers

update customers
set address = '2 shomolu street', city = 'Lagos', state = 'LA'
where first_name = 'Ilene' and last_name = 'Dowson'

-- to confirm it has been updated

select *
from customers
where first_name = 'Ilene' and last_name = 'Dowson'; 


-- 3) Update unit price of 1.66 to 3.74 for order_items

update orders_item
set unit_price = 3.74
where unit_price = 1.66;

-- To confirm,

select *
from orders_item
where unit_price = 3.74;


---- Delete : This is used to erase anything form the table

-- 4) Delete order where order_date = 1994 and customer id = 2

delete from orders
where order_date = '1994' and customer_id = 2;


-- Aggregators : There are single value that represents one or more values- sum, avg, count/frequency

-- 5) Sum quantity_in_stock)

select sum(quantity_in_stock) as Sum
from products;

-- 6) Average quantity in stock

select avg(quantity_in_stock) as Sum
from products;

-- 7) Minimum quantity in stock

select min(quantity_in_stock) as Sum
from products; 

-- 8) Maximum quantity in stock

select max(quantity_in_stock) as Sum
from products;

-- 9) Count of quantity

select count(quantity_in_stock) as Sum
from products;

-- 10) Average unit_price for products that their name start with 'S'

select avg(unit_price) as Avg_Price
from products
where name like 'S%';

-- 11) minimum quantity in stock of products whose unit price are between 3 and 5

select min(quantity_in_stock) as Min_Stock
from products
where unit_price between 3 and 5;


select *
from orders








