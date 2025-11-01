USE enrollment;
CREATE table enrollment.Department  (
DepartmentID tinyint PRIMARY KEY not null,
DepartmentName VARCHAR(40) not null,
DepartmentAccronym CHAR(10) null
);   
INSERT INTO enrollment.Department (DepartmentID, DepartmentName, DepartmentAccronym)
VALUES (1,  'Computer Science','CS');
INSERT INTO enrollment.Department (DepartmentID, DepartmentName, DepartmentAccronym)
VALUES (2,  'Data Science','DS');
INSERT INTO enrollment.Department (DepartmentID, DepartmentName, DepartmentAccronym)
VALUES (3, 'Marketing', 'MKT');
INSERT INTO enrollment.Department (DepartmentID, DepartmentName, DepartmentAccronym)
VALUES (4, 'Engineering & Technology Management', 'ETM');
INSERT INTO enrollment.Department (DepartmentID, DepartmentName, DepartmentAccronym)
VALUES (5,'Information Sciences','INFO');

select*from enrollment.Department
order by DepartmentID;


