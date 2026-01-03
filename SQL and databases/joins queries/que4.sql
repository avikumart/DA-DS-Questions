select s.StudentFirstNm, s.StudentLastNm, c.CourseID, c.CourseName, 
sc.CourseSectionNbr, c.CourseCreditCnt, sc.CourseGrade
from enrollment.student as s 
inner join enrollment.studentcourse as sc on s.StudentID = sc.StudentID
inner join enrollment.course as c on c.CourseID = sc.CourseID
order by c.CourseName;