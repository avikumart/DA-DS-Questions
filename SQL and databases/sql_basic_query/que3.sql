use enrollment;  
create table enrollment.Student (
 StudentID INT PRIMARY KEY NOT NULL auto_increment,
 DepartmentID tinyint NOT NULL,
 StudentFirstNm varchar(20) not null,
 StudentLastNm varchar(20) not null,
 EnrollmentDt DATE not null,
 StudentPhone VARCHAR(15),
 StudentAddress VARCHAR(50),
 StudentCityNm varchar(20),
 StudentStateCd CHAR(2),
 StudentZipcd char(5),
 foreign key (DepartmentID) references Student(DepartmentID)
 );
INSERT INTO enrollment.Student
(DepartmentID, StudentFirstNm, StudentLastNm, EnrollmentDt, StudentPhone, StudentAddress, StudentCityNm, StudentStateCd, StudentZipcd)
VALUES
(1, 'Victor', 'Evans', '2022-01-15', '(937)795-0198', '8471 State 41 Rte', 'West Union', 'OH', '45693'),
(2, 'Julia', 'Mitchell', '2021-11-15', '(231)652-9265', '636 E Kathy St', 'Newaygo', 'MI', '49337'),
(3, 'Anna', 'Stewart', '2023-11-18', '(607)292-6272', '1040 E Lake Rd', 'Dundee', 'NY', '14837'),
(4, 'Adele', 'Andrews', '2023-03-19', '(810)732-6788', '1468 Dyemeadow Ln', 'Flint', 'MI', '48532'),
(5, 'Ryan', 'Elliott', '2022-03-23', '(828)765-1438', '117 Brights Trce', 'Spruce Pine', 'NC', '28777'),
(1, 'Leonardo', 'Baker', '2023-04-11', '(336)376-1149', '9144 Sylvan Rd', 'Liberty', 'NC', '27298'),
(5, 'Alfred', 'Turner', '2022-08-10', '(334)288-6988', '431 Rolling Acres Rd', 'Hope Hull', 'AL', '36043'),
(1, 'Luke', 'Hawkins', '2022-03-01', '(530)525-7340', '6680 W Lake Blvd', 'Tahoma', 'CA', '96142'),
(2, 'Kristian', 'Cole', '2021-08-09', '(801)295-9358', '1381 N 200th W', 'Centerville', 'UT', '84014'),
(3, 'Amanda', 'Casey', '2023-01-03', '(530)938-1191', '220 Terrace St', 'Weed', 'CA', '96094');
select*from enrollment.Student
order by StudentID;
 