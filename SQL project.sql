-- Create a database with the name: Vinay


create database Vinay;
show databases;
use Vinay;
set sql_safe_updates=0;
-- Create the Table with the name: Sales1
-- Display all the data in the table

Create table Sales1(
Salesman_id int primary key,
Name varchar(25) Not null,
City varchar(25),
Commission float
);

insert into sales1 values (5001, 'James Hogg', 'New York', 0.15);
insert into sales1 values (5002, 'Nail Knite', 'Paris', 0.13);
insert into sales1 values (5005, 'Pit Alex', 'London', 0.11);
insert into sales1 values (5006, 'Mc Lyon', 'Paris', 0.14);
insert into sales1 values (5007, 'Paul Adam', 'Rome', 0.13);
insert into sales1 values (5003, 'Lauson Hen', 'San Jose', 0.12);

select * from sales1;

-- Create the Table with the name: Sales2
-- Display all the data in the table

create table Sales2(
Customer_id int primary key,
Cust_name varchar(25) not null,
City varchar(25),
Grade int,
Salesman_id int
);

insert into sales2 values
(3002, 'Nick Rimando', 'New York', 100, 5001), 
(3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'california', 200, 5002), 
(3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'New York', 200, 5007); 

select * from sales2;

-- write a SQL query to change the following data from sales1
-- 1] Change commission of salesman with name of ‘Pit Alex’ to 0.22
-- 2] Change city of salesman with salesman_id of ‘5003’ to Paris
-- 3] Display all the data in the table

Update sales1 set Commission = 0.22 where name = 'Pit Alex';
Update sales1 set City = 'Paris' where Salesman_id = 5003;
select * from sales1;

-- write a SQL query to alter the following data from sales2 table
-- 1] Change grade of customer with name of ‘Graham Zusi’ to 300
-- 2] Change city of customer with cust_id of ‘3009’ to London
-- 3] Display all the data in the table

update sales2 set grade = 300 where cust_name = 'Graham Zusi';
update sales2 set City = 'London' where Customer_id = 3009;
select * from sales2;

-- c] write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. 
-- Return salesman_id, name, city, commission.

select salesman_id, name, city, commission from sales1 where city = 'Paris' or city = 'Rome';
--                                     OR
select salesman_id, name, city, commission from sales1 where city in ('Paris', 'Rome');

-- d] write a SQL query to find the details of those salespeople who live in cities apart from 'Paris' and 'Rome'.
-- Return salesman_id, name, city, commission.

select salesman_id, name, city, commission from sales1 where city != 'Paris' and city != 'Rome';
--                                      OR
select salesman_id, name, city, commission from sales1 where city not in ('Paris', 'Rome');

-- e] write a SQL query to find the details of salespeople who get the commission in the range from 0.12 to 0.14 (begin and end values are included). 
-- Return salesman_id, name, city, and commission.

select salesman_id, name, city, commission from sales1 where commission between 0.11 and 0.15;
--                                    OR
select salesman_id, name, city, commission from sales1 where commission > 0.11 and commission < 0.15;

-- f] write a SQL query to find the details of those salespeople whose name starts with any letter within 'A' and 'L' (not inclusive). 
-- Return salesman_id, name, city, commission.

select salesman_id, name, city, commission from sales1 where name between 'a%' and 'l%';

-- g] write a SQL query to find the details of the customers whose name begins with the letter 'B'. 
-- Return customer_id, cust_name, city, grade, salesman_id.

select customer_id, Cust_name, City, Grade, Salesman_id from sales2 where cust_name like 'b%';

-- h] write a SQL query to find the details of the customers whose names end with the letter 'n'. 
-- Return customer_id, cust_name, city, grade, salesman_id.

select customer_id, Cust_name, City, Grade, Salesman_id from sales2 where cust_name like '%n';

-- i] write a SQL query to find the details of those salespeople whose name starts with ‘N’ and the fourth character is 'l'. Rests may be any character. 
-- Return salesman_id, name, city, commission.

select * from sales1 where name like 'n%%l%';

-- Create the following Table with the name: Nobel
-- Display data

create table Nobel(
Year int,
Subject varchar(50),
Winner varchar(50),
Country varchar(50),
Category varchar(50)
);

insert into Nobel values (1970, 'Physics', 'Hannes Alfven', 'Sweden', 'Scientist'), (1970, 'Physics', 'Louis Neel', 'France', 'Scientist'), (1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'), (1970, 'Physiology', 'Ulf Von Euler', 'Sweden', 'Scientist'), (1970, 'Physiology', 'Bernard katz', 'Germany', 'Scientist'), (1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'), (1970, 'Economics', 'Paul Samuelson', 'USA', 'Economist'), (1970, 'Physiology', 'ulius Axelrod', 'USA', 'Scientist');
insert into Nobel values (1971, 'Physics', 'Dennis Gabor', 'Hungary', 'Scientist'), (1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'), (1971, 'Piece', 'Willy brandt', 'Germany', 'Chancellor'), (1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'), (1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economics');
insert into Nobel values (1978, 'Peace', 'Anwar al-sadat', 'Egypt', 'President'), (1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister');
insert into Nobel values (1987, 'Chemistry', 'Donald J. Cram', 'USA', 'Scientist'), (1987, 'Chemistry', 'Jean-Marie Lehn', 'France', 'Scientist'), (1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'), (1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'), (1987, 'Literature', 'Joseph brodsky', 'Russia', 'Linguist'), (1987, 'Economics', 'Susumu Tonegawa', 'USA', 'Economist');
insert into Nobel values (1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'), (1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'), (1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

select * from Nobel;

-- c] write a SQL query to find the Nobel Prize winner(s) in the following years (Return year, subject and winner):
-- 1970
-- 1987

select year, subject, winner from nobel where year = 1970 or year = 1987;
--                              OR
select year, subject, winner from nobel where year in (1970 , 1987); 

-- d] write a SQL query to find the Nobel Prize winner in 'Literature' in the year 1971. Return winner.

select winner from nobel where Subject = 'Literature' and year = 1971;

-- e] write a SQL query to find the Nobel Prize winner 'Dennis Gabor'. Return year, subject.

select year, subject from nobel where winner = 'Dennis Gabor';

-- f] write a SQL query to find the Nobel Prize winners in 'Physics' since the year 1950. Return winner.

select winner from nobel where subject = 'Physics' and year >= 1950;

-- g] write a SQL query to find the Nobel Prize winners in 'Chemistry' between the years 1965 to 1975. Begin and end values are included.
-- Return year, subject, winner, and country

select year, subject, winner, country from nobel where subject = 'Chemistry' and year between 1965 and 1975;

-- h] Write a SQL query to show all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.

select * from nobel where category = 'prime minister' and year >= 1972 and winner = 'Menachem Begin' or winner = 'Yitzhak Rabin';

-- i] write a SQL query to find the details of the winners whose first name matches with the string 'Louis'.
-- Return year, subject, winner, country, and category.

select * from nobel where winner like 'louis%';

-- j] write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. 
-- Return year, subject, winner, country, and category.

select * from nobel where winner = 'Johannes Georg Bednorz';

-- Create the following Table with the name: Orders
-- Display data

create table Orders(
Ord_no int primary key,
Purch_amt float not null,
Ord_date date, 
Customer_id int,
Salesman_id int
);

insert into orders values 
(70001, 150.5, '2012-10-05', 3005, 5002),
(70009, 270.65, '2012-09-10', 3001, 5005),
(70002, 65.26, '2012-10-05', 3002, 5001),
(70004, 110.5, '2012-08-17', 3009, 5003),
(70007, 948.5, '2012-09-10', 3005, 5002),
(70005, 2400.6, '2012-07-27', 3007, 5001),
(70008, 5760, '2012-09-10', 3002, 5001),
(70010, 1983.43, '2012-10-10', 3004, 5006),
(70003, 2480.4, '2012-10-10', 3009, 5003),
(70012, 250.45, '2012-06-27', 3008, 5002),
(70011, 75.29, '2012-08-17', 3003, 5007),
(70013, 3045.6, '2012-04-25', 3002, 5001);

select * from orders;

-- c] write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.

select sum(purch_amt) as Total_purchase_amount from orders;

-- d] write a SQL query to calculate average purchase amount of all orders. Return average purchase amount

select avg(purch_amt) as Average_purchase_amount from orders;

-- e] write a SQL query to count the number of unique salespeople. Return number of salespeople.

select count(distinct(salesman_id)) as Number_of_salespeople from orders;

-- f] write a SQL query to count the number of customers. Return number of customers.

select count(distinct(customer_id)) as Number_of_customers from orders;

-- Create the Table with the name: Nobel
-- Display data

select * from nobel;

-- c] write a SQL query to combine the winners in Physics, 1970 and in Economics, 1971.
-- Return year, subject, winner, country, and category.

select * from nobel;
select * from nobel where subject = 'Physics' and year = 1970
union
select * from nobel where subject = 'Economics' and year = 1971;                          

-- Create the following Table with the name: Sales2
-- display data

drop table sales2;

create table Sales2(
Customer_id int primary key,
Cust_name varchar(25) not null,
City varchar(25),
Grade int,
Salesman_id int
);

insert into sales2 values
(3002, 'Nick Rimando', 'New York', 100, 5001), 
(3007, 'Brad Davis', 'New York', 200, 5001), 
(3005, 'Graham Zusi', 'california', 200, 5002), 
(3008, 'Julian Green', 'London', 300, 5002), 
(3004, 'Fabian Johnson', 'Paris', 300, 5006), 
(3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
(3003, 'Jozy Altidor', 'New York', 200, 5007); 

select * from sales2;

-- Create the following table with the name: Sales1
-- Display data

drop table sales1;

Create table Sales1(
Salesman_id int primary key,
Name varchar(25) Not null,
City varchar(25),
Commission float
);

insert into sales1 values (5001, 'James Hogg', 'New York', 0.15);
insert into sales1 values (5002, 'Nail Knite', 'Paris', 0.13);
insert into sales1 values (5005, 'Pit Alex', 'London', 0.11);
insert into sales1 values (5006, 'Mc Lyon', 'Paris', 0.14);
insert into sales1 values (5007, 'Paul Adam', 'Rome', 0.13);
insert into sales1 values (5003, 'Lauson Hen', 'San Jose', 0.12);

select * from sales1;
select * from sales2;

-- d] write a SQL query to find the salesperson and customer who belongs to same city.
-- Return Salesman, cust_name and city.

select sales1.name as salesperson, sales2.cust_name, sales2.city from sales1 
inner join sales2 on sales1.city = sales2.city;

-- e] write a SQL query to find the salesperson(s) and the customer(s) he handle. 
-- Return Customer Name, city, Salesman, commission

select sales2.cust_name as Customer_Name, sales2.city, sales1.name as salesman, sales1.commission from sales1 
inner join sales2 on sales1.salesman_id = sales2.salesman_id;

-- f] write a SQL query to find those salespersons who received a commission from the company more than 12%.

select * from sales1 left join sales2 on sales1.salesman_id = sales2.salesman_id where sales1.commission > 0.12;

-- g] write a SQL query to find those salespersons do not live in the same city where their customers live and received a commission from the company more than 12%. 
-- Return Customer Name, customer city, Salesman, salesman city, commission.

select sales2.cust_name as customer_name, sales2.city as customer_city, sales1.name as salesman, 
sales1.city as salesman_city, sales1.commission from sales1 inner join sales2 
on sales1.salesman_id = sales2.salesman_id where sales1.city != sales2.city and sales1.commission > 0.12;