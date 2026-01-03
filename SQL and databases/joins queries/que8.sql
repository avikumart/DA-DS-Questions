SELECT 
    c.CourseID,c.CourseName, fc.CourseSectionNbr, f.FacultyID, f.FacultyFirstNm,f.FacultyLastNm
FROM enrollment.Course c
INNER JOIN enrollment.coursefaculty fc ON c.CourseID = fc.CourseID
INNER JOIN Faculty f ON fc.FacultyID = f.FacultyID
WHERE f.FacultyFirstNm IS NULL OR f.FacultyFirstNm = ''
ORDER BY 
    c.CourseID,fc.CourseSectionNbr,f.FacultyID;
