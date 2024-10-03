
-- DML Commands
-- Insert data in to customer table
use company;
show tables;

CREATE TABLE customers(
CustomerId int,
first_name varchar(20),
last_name varchar(20),
country varchar(20)
);


INSERT INTO customers (CustomerId,first_name,last_name,country)
VALUES 
(1,'Mike', 'Christensen', 'USA'),
(2, 'Andy', 'Hollands', 'Australia');

select * from customers;


INSERT INTO customers values
(3, 'Ravi', 'Vedantam', 'India');
select * from customers;


-- Update the data for one row
UPDATE customers
SET first_name = 'John', last_name= 'Kent'
WHERE CustomerId=1;
select * from customers;


-- Delete data from table
DELETE FROM customers WHERE first_name='John';

select * from customers;

-- View the data in the table
select * from customers;


INSERT INTO customers (CustomerId,first_name,last_name,country)
VALUES 
(1,'Mike', 'Christensen', 'USA');

set autocommit=0;


update customers set country='Spain'
where CustomerId = 2;

select * from customers;

rollback;

commit;










