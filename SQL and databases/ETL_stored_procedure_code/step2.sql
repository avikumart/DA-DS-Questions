CREATE TABLE Customer.CustomerChurn_Stage (
    CustomerId BIGINT NOT NULL,
    Surname VARCHAR(100),
    CreditScore SMALLINT,
    Geography VARCHAR(50),
    Gender VARCHAR(10),
    Age TINYINT,
    Balance DECIMAL(15, 2),
    Exited TINYINT,
    PRIMARY KEY (CustomerId)
);
SHOW CREATE TABLE Customer.CustomerChurn_Stage;

CREATE TABLE Customer.CustomerChurn (
    CustomerId BIGINT NOT NULL,
    Surname VARCHAR(100),
    CreditScore SMALLINT,
    Geography VARCHAR(50),
    Gender VARCHAR(10),
    Age TINYINT,
    Balance DECIMAL(15, 2),
    Exited TINYINT,
    SourceSystemNm VARCHAR(20) NOT NULL,
    CreateAgentId VARCHAR(20) NOT NULL,
    CreateDtm DATETIME NOT NULL,
    ChangeAgentId VARCHAR(20) NOT NULL,
    ChangeDtm DATETIME NOT NULL,
    PRIMARY KEY (CustomerId)
);
SHOW CREATE TABLE Customer.CustomerChurn;