call Customer.PrCustomerChurn;

-- Compare the rowcounts
SELECT 'CustomerChurn_Stage' AS TableName, COUNT(*) AS RowCount
FROM Customer.CustomerChurn_Stage
UNION ALL
SELECT 'CustomerChurn' AS TableName, COUNT(*) AS RowCount
FROM Customer.CustomerChurn;

--  
SELECT *
FROM Customer.CustomerChurn
ORDER BY CustomerId desc
LIMIT 10;