use enrollment;
create table enrollment.CourseFaculty (
FacultyID smallint not null,
CourseID char(10) not null,
CourseSectionNbr tinyint not null,
primary key (FacultyID, CourseID, CourseSectionNbr),
foreign key (FacultyID) references Faculty(FacultyID),
foreign key (CourseID, CourseSectionNbr)
   references CourseSection(CourseID, CourseSectionNbr));
INSERT INTO enrollment.CourseFaculty (FacultyID, CourseID, CourseSectionNbr)
VALUES
(1101, 'STAT 461',1),
(1102, 'DS 344', 2),
(1103, 'DS 344', 2),
(1104, 'DS 436', 2),
(1105, 'DS 436', 2),
(1106, 'CS 575', 1),
(1107, 'CS 575', 1),
(1104, 'CS 577', 2),
(1105, 'INFO 579', 3),
(1105, 'INFO 531', 3),
(1108, 'ETM 533', 2),
(1103, 'MKT 300', 1),
(1101, 'MKT 420',1);
SELECT*from enrollment.CourseFaculty
order by FacultyID, CourseID, CourseSectionNbr;
   
   