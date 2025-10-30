select s.StudentID, s.StudentFirstNm, s.StudentLastNm, c.CourseID,
 sc.CourseSectionNbr, c.CourseName 
from enrollment.student as s 
inner join enrollment.studentcourse as sc on s.StudentID = sc.StudentID
inner join enrollment.course as c on c.CourseID = sc.CourseID
order by s.StudentID, c.CourseID, sc.CourseSectionNbr;
 