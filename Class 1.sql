
-- creating a working database
create database ECH_sql


-- creating a table for the orders csv file provided

create table orders (order_id integer,
					customer_id integer,
					order_date date not null, 
					status integer not null,
					comments varchar not null,
					shipped_date date not null,
					shipper_id integer);
                    
create table orders (order_id integer primary key,
           customer_id integer not null,
           order_date integer not null,
           status integer not null,
           coment text,
           shipped_date integer,
           shipper_id integer);
           
           insert into orders (order_id, customer_id, order_date, status, coment, shipped_date, shipper_id)
values (1, 6, 2019-01-30, 1, NULL, NULL, NULL), (2, 7, 2018-08-02, 2, NULL, 2018-08-03, 4), 
(3, 8, 2017-12-01, 1, NULL, NULL, NULL), (4, 2, 2017-01-22, 1, NULL, NULL, NULL), 
(5, 5, 2017-08-25, 2, '', 2017-06-26, 3), (6, 10, 2018-11-18, 1, 'Aliquam erat mo', NULL, NULL),
(7, 2, 2018-09-22, 2, NULL, 2018-09-23, 4), (8, 5, 2018-06-08, 1, 'Mauris elim leo rho', NULL, NULL),
(9, 10, 2017-07-05, 2, 'Nulla mollis molestie', 2017-07-06, 1), (10, 6, 2018-04-22, 2, NULL,2018-04-23, 2);

-- To confirm
select*
from orders

/* Assignment 
1. create a table for each csv in the folder shared
2. insert all the values */

-- Assignment Solution

create table products
	 (product_id integer primary key,
			 name varchar, quantity_in_stock integer,
		    unit_price float);
            
create table order_items_note
	 (note_id integer primary key,
	  order_Id integer, product_id integer,
      note varchar);     
            
create table customers
	 (customer_id integer primary key,
      first_name varchar, last_name varchar, 
      birth_date date,
      phone varchar, address varchar, city varchar,
	  state varchar, points integer);            
            
           
create table orders_item
	 (order_id integer not null,
      quantity integer not null, product_id integer not null,
     unit_price float not null);
  
