-- Constraints
/*
Primary Key
Foreign Key
NOT NULL
Unique*/

create database db;
use db;

create table course
(
course_id integer primary key,
course_name varchar(20) NOT NULL
);

insert into course values ( 100, 'Python');
insert into course values ( 200, 'SQL');
insert into course values ( 300, 'BigData');

select * from course;


insert into course values ( 400, 'Java');
insert into course(course_id) values ( 500 ); -- Error


create table student(
student_id integer primary key,
student_name varchar(20) NOT NULL,
course_id integer ,
  foreign key(course_id) references course(course_id)
);

select * from student;

insert into student values( 1,'Alex', 100);
insert into student values( 2,'John', 200);
insert into student values( 3,'Ritesh', 100);
insert into student values( 4,'Rishab', 400);


-- Unique
create table department(
dept_id integer primary key,
dept_name varchar(20) UNIQUE
);

insert into department values(1001, 'HR');
insert into department values(1002, 'Sales');
insert into department values(1002, 'Accounting'); -- Primary key violation
insert into department values(1003, 'HR');  -- Unique key violation
insert into department values(1003, 'Marketing'); 

select * from department;







