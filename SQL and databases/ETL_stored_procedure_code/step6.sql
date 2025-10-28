CREATE TABLE Customer.CustomerChurn_Version1
AS
select * from Customer.CustomerChurn;

-- show table definition
show create table  Customer.CustomerChurn_Version1;

select count(*) from Customer.CustomerChurn_Version1;

SELECT*FROM Customer.CustomerChurn_Version1
order by CustomerId desc
LIMIT 10;

TRUNCATE TABLE Customer.CustomerChurn_Stage;

-- Verify row count of Customer.CustomerChurn_Stage (New data)
SELECT COUNT(*)
FROM Customer.CustomerChurn_Stage;

SELECT *
FROM Customer.CustomerChurn_Stage
ORDER BY CustomerId desc
LIMIT 10;