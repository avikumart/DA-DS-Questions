select distinct c.CourseName
from enrollment.Course c 
inner join enrollment.Studentcourse sc on c.CourseID = sc.CourseID
inner join enrollment.student s on sc.StudentID = s.StudentID
where year(s.EnrollmentDt) = 2023
order by c.CourseName;
