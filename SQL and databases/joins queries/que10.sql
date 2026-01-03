SELECT 
    s.StudentFirstNm,s.StudentLastNm,c.CourseName,
    cs.CourseSectionNbr,f.FacultyFirstNm,f.FacultyLastNm
FROM enrollment.Student s
INNER JOIN enrollment.studentcourse cs ON s.StudentID = cs.StudentID
INNER JOIN enrollment.Course c on cs.CourseID = c.CourseID
INNER JOIN enrollment.CourseFaculty cf ON cs.CourseID = cf.CourseID
INNER JOIN enrollment.Faculty f ON cf.FacultyID = f.FacultyID
WHERE s.StudentID IN (1, 2)    
ORDER BY 
    s.StudentLastNm,c.CourseName,cs.CourseSectionNbr;
