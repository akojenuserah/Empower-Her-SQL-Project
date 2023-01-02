--JOINS

-- join : is used to combine two tables using the primary and foreign keys

-- Join the customers and orders table

select * 
from customers
join orders
on customers.customer_id = orders.customer_id;

-- There are 4 types of join

-- left join : all matches for both tables and values that are on the left table  
select * from customers
left join orders
on customers.customer_id = orders.customer_id
order by customers.customer_id asc;

-- right join
select * from customers
right join orders
on customers.customer_id = orders.customer_id;

-- inner join
select * from customers
join orders
on customers.customer_id = orders.customer_id;

-- full join
select * from customers
full join orders
on customers.customer_id = orders.customer_id;

--- CLASS WORK

-- 1) find the first_name and orders made by customer 7

select first_name, order_id 
from customers c
full join orders o
on c.customer_id = o.customer_id
where c.customer_id = 7;

-- 2) find the firstname, lastname and the orders made in the lowest order_date

select first_name, last_name, order_id, order_date 
from customers c
left join orders o
on c.customer_id = o.customer_id
where order_date = (select min(order_date) from orders); 

-- 3) find orders made in the lowest order_date

select * 
from orders
where order_date = (select min(order_date) from orders);

-- 4) find the first_name and the last_name of the eldest customer

select first_name, last_name, birth_date 
from customer
where birth_date = (select min(birth_date) from customer);

-- 5) find the lowest point of customers whose first name start with 'B'

select min(points) 
from (select * from customers where first_name like 'B%') as table1;



