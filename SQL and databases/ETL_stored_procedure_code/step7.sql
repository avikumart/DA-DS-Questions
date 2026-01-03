call Customer.PrCustomerChurn();

SELECT 'CustomerChurn_Version1' AS TableName, COUNT(*) AS RowCount
FROM Customer.CustomerChurn_Version1
UNION ALL
SELECT 'CustomerChurn' AS TableName, COUNT(*) AS RowCount
FROM Customer.CustomerChurn;

select v.* from Customer.CustomerChurn_Version1 as v
left join Customer.CustomerChurn as c
on v.CustomerId = c.CustomerId
where c.CustomerId is null
order by v.CustomerId;