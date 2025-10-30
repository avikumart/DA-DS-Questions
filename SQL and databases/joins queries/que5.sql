SELECT 
    c.CourseID,c.CourseName,f.FacultyFirstNm,f.FacultyLastNm
FROM enrollment.Course c
INNER JOIN enrollment.coursefaculty cf ON c.CourseID = cf.CourseID
INNER JOIN enrollment.Faculty f ON cf.FacultyID = f.FacultyID
ORDER BY 
    c.CourseName,cf.CourseSectionNbr,f.FacultyLastNm,f.FacultyFirstNm;
