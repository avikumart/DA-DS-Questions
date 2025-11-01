use enrollment;
create table enrollment.Course (
CourseID char(10) not null primary key,
CourseName varchar(120) not null,
CourseCreditCnt tinyint not null
);
insert into enrollment.Course (CourseID, CourseName, CourseCreditCnt) values
('STAT 461', 'Applied Statistics', 3),
('DS 344', 'Introduction to Big Data', 3),
('DS 436', 'Data Analytics with Python Programming', 3),
('CS 575', 'Machine Learning', 3),
('CS 577', 'Deep Learning', 3),
('INFO 579', 'SQL/NoSQL Databases for Data and Information Sciences', 3),
('INFO 531', 'Data Warehousing and Analytics in the Cloud', 3),
('ETM 533', 'Technology Transfer', 4),
('MKT 300', 'Marketing Strategy', 4),
('MKT 420', 'Research Methodology', 4);
select*from enrollment.Course
order by CourseID;