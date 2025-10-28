SELECT *
FROM Customer.CustomerChurn
ORDER BY CustomerId desc
LIMIT 10;

-- insert table verification
SELECT C.* 
FROM Customer.CustomerChurn AS C
LEFT JOIN Customer.CustomerChurn_Version1 AS V1 ON C.CustomerId = V1.CustomerId
where V1.CustomerId is null
ORDER BY C.CustomerId;