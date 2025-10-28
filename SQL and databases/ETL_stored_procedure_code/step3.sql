SELECT*FROM Customer.CustomerChurn_Stage
order by CustomerId desc
LIMIT 10;

-- count the number of the rows in the dataset
SELECT count(*) FROM Customer.CustomerChurn_Stage;