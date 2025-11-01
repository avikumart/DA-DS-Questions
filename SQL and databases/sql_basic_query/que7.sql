use enrollment;
create table enrollment.Faculty (
FacultyID smallint not null primary key,
FacultyFirstNm varchar(20),
FacultyLastNm varchar(20),
FacultyPhone varchar(15) not null
);
INSERT INTO enrollment.Faculty (FacultyID, FacultyFirstNm, FacultyLastNm, FacultyPhone)
VALUES
(1101, 'David', 'Gerbing', '(520)5243233'),
(1102, 'Shameem', 'Akhter', '(645)3456790'),
(1103, 'Eva', 'Askarza', '(430)4566745'),
(1104, 'Li', 'Xu', '(520)2342349'),
(1105, 'Nayem', 'Rahman', '(520)3456712'),
(1106, 'Mohib', 'Rahman', '(520)4567890'),
(1107, NULL, 'Zuick', '(420)4535678'),
(1108, 'Tugrul', 'Daim', '(432)4567824');
select*from enrollment.Faculty
order by FacultyID;
