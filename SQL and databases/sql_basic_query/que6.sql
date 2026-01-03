use enrollment;
create table enrollment.StudentCourse (
StudentID Int not null,
CourseID char(10) not null,
CourseSectionNbr tinyint not null,
CourseGrade char(1),
primary key (StudentID, CourseID, CourseSectionNbr),
foreign key (StudentID) references Student(StudentID),
FOREIGN KEY (CourseID, CourseSectionNbr)
    REFERENCES CourseSection(CourseID, CourseSectionNbr)
);
insert into enrollment.StudentCourse (StudentID,CourseID,CourseSectionNbr,CourseGrade) values
(1, 'CS 575', 1, 'A'),
(1, 'STAT 461', 1, 'B'),
(2, 'DS 436', 2, 'A'),
(2, 'CS 575', 1, 'B'),
(3, 'ETM 533', 2, 'A'),
(3, 'MKT 420',1 , 'A'),
(4, 'ETM 533', 2, 'A'),
(4, 'MKT 300', 1, 'B'),
(5, 'INFO 531', 3, 'A'),
(5, 'INFO 579', 3, 'A'),
(5, 'STAT 461', 1, 'B'),
(6, 'CS 575', 1, 'B'),
(6, 'CS 577', 2, 'A'),
(6, 'INFO 579', 3, 'A'),
(7, 'DS 436', 2, 'A'),
(7, 'INFO 579', 3, 'A'),
(8, 'CS 577', 2, 'B'),
(8, 'CS 575', 1, 'A'),
(8, 'DS 436', 2, 'A'),
(9, 'DS 436', 2, 'A'),
(9, 'INFO 579', 3, 'A'),
(9, 'INFO 531', 3, 'B'),
(10, 'MKT 300',1,'B'),
(10, 'MKT 420',1,'A'),
(10, 'DS 344',2,NULL);
select*from enrollment.StudentCourse
order by StudentID, CourseID, CourseSectionNbr;