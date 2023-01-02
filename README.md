# Empower-Her-SQL-

## About

This was a two weeks training organised by Empower Her Community Data Science Channle, and it took place in an interval of 3 days.

After the training, a project was carried out to test the knowlwge of the participants.

## Dataset

The [dataset](https://drive.google.com/drive/folders/1n77tuGedy7s9uWPY_hEEqWhnfakl3jIt) used for this training was provided by the tutor in a google drive. 

The datset contained 5 differnets sheets named orders, products, orders_item, orders_items_note and customers.

## Tools Used

The tools used for this project are;

- Microsft Excel
- PostgresSQL(Pgadmi4)

## Steps Taken

- Downloaded each file in and excel format.
- Created a database for my working environment.
- Created a table each for the sheets.
NOTE: While creating the orders table, I encountered some challenges and below were the ways I solved them;
     - The major challenge was with the shipped_date column having NULL values and the NOT NULL constraint did not work for it. I made research and found out that Pgadmin cannot read in a null value in a date format column. So I changed the null values to 4/1/1990.
     - The other constraint was with the shipper_id colum and the NOT NULL constraint could also not work for it. So, i filled the null values with 0.
     
- Answered some questions by running queries.
