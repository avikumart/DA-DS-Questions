use enrollment;
create table enrollment.CourseSection (
CourseID CHAR(10) NOT NULL,
CourseSectionNbr tinyint not null,
PRIMARY KEY (CourseID, CourseSectionNbr)
);
insert into enrollment.CourseSection (CourseID, CourseSectionNbr) values
('STAT 461', 1),
('DS 344', 2),
('DS 436', 2),
('CS 575',1),
('CS 577', 2),
('INFO 579',  3),
('INFO 531',  3),
('ETM 533', 2),
('MKT 300', 1),
('MKT 420', 1);
select*from enrollment.CourseSection
order by CourseID, CourseSectionNbr; 
