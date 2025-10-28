DELIMITER $$

-- PROCEDURE Customer.PrCustomerChurn()
CREATE PROCEDURE Customer.PrCustomerChurn()
BEGIN

-- **************************************************************************************************************
DECLARE VarCurrentTimestamp DATETIME DEFAULT NOW(); -- Use DATETIME or TIMESTAMP for current time
DECLARE VarSourceRowCount INT DEFAULT 0;
DECLARE VarTargetRowCount INT DEFAULT 0;
DECLARE VarThresholdNbr INT DEFAULT 0;
DECLARE VarTinyIntVal TINYINT;
-- TINYINT in MySQL typically holds -128 to 127 signed, or 0 to 255 unsigned.
-- The template uses this to intentionally cause a failure.
-- Get Source Row Count
SELECT COUNT(*)
INTO VarSourceRowCount
FROM Customer.CustomerChurn_Stage;

-- Get Target Row Count
SELECT COUNT(*)
INTO VarTargetRowCount
FROM Customer.CustomerChurn;

-- Calculate Threshold (TargetCount * 20%)
SET VarThresholdNbr = CAST((VarTargetRowCount * 0.2) AS SIGNED INTEGER);

IF VarSourceRowCount < VarThresholdNbr THEN
    SET VarTinyIntVal = -129;
END IF;

-- **************************************************************************************************************
-- 1. DELETE target table rows which are no longer available in source database table (CustomerChurn_Stage).
DELETE TrgtTbl
FROM Customer.CustomerChurn AS TrgtTbl
LEFT JOIN Customer.CustomerChurn_Stage AS SrcTbl
    ON TrgtTbl.CustomerId = SrcTbl.CustomerId
WHERE SrcTbl.CustomerId IS NULL;

-- **************************2. UPDATE ROWS THAT CHANGED IN SOURCE******************************************
UPDATE Customer.CustomerChurn AS TrgtTbl
INNER JOIN Customer.CustomerChurn_Stage AS SrcTbl
    ON TrgtTbl.CustomerId = SrcTbl.CustomerId
SET
    TrgtTbl.Surname = SrcTbl.Surname,
    TrgtTbl.CreditScore = SrcTbl.CreditScore,
    TrgtTbl.Geography = SrcTbl.Geography,
    TrgtTbl.Gender = SrcTbl.Gender,
    TrgtTbl.Age = SrcTbl.Age,
    TrgtTbl.Balance = SrcTbl.Balance,
    TrgtTbl.Exited = SrcTbl.Exited,
    TrgtTbl.ChangeDtm = VarCurrentTimestamp,
    TrgtTbl.ChangeAgentId = USER()
WHERE
    (
        COALESCE(TrgtTbl.Surname, '') <> COALESCE(SrcTbl.Surname, '')
        OR TrgtTbl.CreditScore <> SrcTbl.CreditScore
        OR COALESCE(TrgtTbl.Geography, '') <> COALESCE(SrcTbl.Geography, '')
        OR COALESCE(TrgtTbl.Gender, '') <> COALESCE(SrcTbl.Gender, '')
        OR TrgtTbl.Age <> SrcTbl.Age
        OR TrgtTbl.Balance <> SrcTbl.Balance
        OR TrgtTbl.Exited <> SrcTbl.Exited
    );

-- ****************************3. INSERT BRAND NEW ROWS INTO TARGET****************************************
INSERT INTO Customer.CustomerChurn
(
    CustomerId,
    Surname,
    CreditScore,
    Geography,
    Gender,
    Age,
    Balance,
    Exited,
    SourceSystemNm,
    CreateAgentId,
    CreateDtm,
    ChangeAgentId,
    ChangeDtm
)
SELECT
    SrcTbl.CustomerId,
    SrcTbl.Surname,
    SrcTbl.CreditScore,
    SrcTbl.Geography,
    SrcTbl.Gender,
    SrcTbl.Age,
    SrcTbl.Balance,
    SrcTbl.Exited,
    'Kaggle-CSV' AS SourceSystemNm,
    USER() AS CreateAgentId,
    VarCurrentTimestamp AS CreateDtm,
    USER() AS ChangeAgentId,
    VarCurrentTimestamp AS ChangeDtm
FROM Customer.CustomerChurn_Stage AS SrcTbl
LEFT JOIN Customer.CustomerChurn AS TrgtTbl
    ON SrcTbl.CustomerId = TrgtTbl.CustomerId
WHERE
    TrgtTbl.CustomerId IS NULL;

END$$
DELIMITER ;