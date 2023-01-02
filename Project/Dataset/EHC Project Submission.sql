--NOTE: I made use of the database created for the training to create my tables


--- Creating the tables
                    
 create table donor ( id integer primary key,
					 donation_frequency varchar,
					university varchar not null, 
					car varchar,
					second_language varchar not null,
					favourite_color varchar not null,
					movie_genre varchar);
 
create table donation ( id integer primary key,
					 First_Name varchar,
					Last_Name varchar not null, 
					Email varchar ,
					Gender varchar not null,
					Job_filed varchar not null,
					Donation integer,
                    State varchar,
                    Shirts_size varchar);

--QUESTIONS

-- a) How much is the total donation?

select SUM(donation) AS Total_donation
from donation;

-- b) What is the total donation by gender?

select sum(donation) as total_donation, gender
from donation
group by gender;

-- c) Show the total donation and number of donations by gender

select sum(donation) as Donation, count(donation) donation_count, gender
from donation
group by gender;

-- d) Total donation made by frequency of donation

select sum(donation.donation) donation, donor.donation_frequency 
from donor 
join donation
on donor.id = donation.id
group by donation_frequency;

-- e) Total donation and number of donation by Job field

select sum(donation) as Donation, count(donation) donation_count, job_filed
from donation
group by job_filed;

-- f) Total donation and number of donations above above $200

select sum(donation) as Donation, count(donation) donation_count
from donation
where donation > 200;

-- g) Total donation and number of donations below $200

select sum(donation) as Donation, count(donation) donation_count
from donation
where donation < 200;

-- h) Which top 10 states contributes the highest donations

select d.state,sum(d.donation) total_donation 
from donation d
group by state
order by total_donation desc
limit 10;

-- i) Which top 10 states contributes the least donations

select d.state,sum(d.donation) total_donation 
from donation d
group by state
order by total_donation 
limit 10;

-- j) What are the top 10 cars driven by the highest donors

select don.car,sum(d.donation) total_donation 
from donation d
join donor don
on d.id = don.id
group by car
order by total_donation desc
limit 10;

-- k) What are the top 10 movie genre by the highest donors

select don.movie_genre genre,sum(d.donation) total_donation 
from donation d
join donor don
on d.id = don.id
group by genre
order by total_donation desc
limit 10;








