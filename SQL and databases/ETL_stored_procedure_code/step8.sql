SELECT C.* 
FROM Customer.CustomerChurn AS C
INNER JOIN Customer.CustomerChurn_Version1 AS V1 ON C.CustomerId = V1.CustomerId
WHERE
    C.Surname <> V1.Surname
    OR C.CreditScore <> V1.CreditScore
    OR C.Geography <> V1.Geography
    OR C.Gender <> V1.Gender
    OR C.Age <> V1.Age
    OR C.Balance <> V1.Balance
    OR C.Exited <> V1.Exited
ORDER BY C.CustomerId;