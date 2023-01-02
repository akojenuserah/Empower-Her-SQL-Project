-- functions : stuffs that allow to perform calculations or manipulations on strings. date, number etc


-- create a column called division, divide order_date by 4

select order_date, div(order_date, 4) as division
from orders;

-- string functions
-- concat

select concat(first_name, ' ', last_name) as full_name
from customers;

-- length, lower, upper

select length(concat(first_name, ' ', last_name)) as number_of_characters
from customers;

select lower(concat(first_name, ' ', last_name)) as number_of_characters
from customers;

select upper(concat(first_name, ' ', last_name)) as number_of_characters
from customers;

-- if statement, if condition, then statements and case statement

/*group customers based on points
-- if a customer has points below 1000, this customer does not visit often
-- if a customer's point is between 1000 and 2000 , moderate visitor
-- if has points greater than to 2000, this customer visits often*/

select customer_id, points,
case 
	when points < 1000 then 'This customer does not visit often'
	when points between 1000 and 2000 then 'moderate customer'
	else 'This customer visits often' 
end
as customer_visit
from customers;


-- Having

-- total amount spent by each customers who spent less than 100

select customer_id, sum(amount) as total_amount
from payment
where amount > 2
group by customer_id
having sum(amount) > 100;

-- i want to find the minimum amount spend by each customer who paid for film between 16 and 20 
-- and the maximum amount they spent is above 1
select customer_id, min(amount) 
from payment
where extract(day from payment_date) between 16 and 20
group by customer_id
having max(amount) > 20;

-- find distinct staff id in payment
select distinct(staff_id)
from payment;

-- total amount each staff made for the company on 16
select staff_id, sum(amount)
from payment
where extract(day from payment_date) = 16
group by staff_id;

-- total amount made by the staff who made the lowest (total) amount between 18 and 21
Select staff_id, sum(amount) as MPayment 
from payment
Where extract (day from payment_date) between 18 and 21
Group by staff_id
order by mpayment asc
limit 1;

select staff_id, min(sum(amount)) as lowest_amount 
from payment where extract(day from payment_date) between 16 and 21 
group by staff_id;



