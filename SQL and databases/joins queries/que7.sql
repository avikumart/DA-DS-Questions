SELECT 
    s.StudentID,s.StudentFirstNm,s.StudentLastNm,c.CourseName, cs.CourseSectionNbr,cs.CourseGrade
FROM enrollment.student s
INNER JOIN enrollment.studentcourse cs ON s.StudentID = cs.StudentID
INNER JOIN enrollment.Course c ON cs.CourseID = c.CourseID
WHERE s.StudentID IN (1, 2)  
ORDER BY 
    s.StudentID,c.CourseName,cs.CourseSectionNbr;
