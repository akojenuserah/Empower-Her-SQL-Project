
-- creating a working database
create database ECH_sql


-- creating a table for the orders csv file provided

create table orders (order_id integer primary key,
					customer_id integer,
					order_date date not null, 
					status integer not null,
					comments varchar not null,
					shipped_date date not null,
					shipper_id integer not null);
 
				
/* Assignment 
1. drop all databases you have created
2. create a new database called my_first_db
3. create a table for each csv in the folder shared
4. insert all the values */

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
  
