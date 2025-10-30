SELECT f.FacultyID, f.FacultyFirstNm, f.FacultyLastNm, c.CourseID,
    fc.CourseSectionNbr, c.CourseName
FROM enrollment.Faculty f
INNER JOIN enrollment.coursefaculty fc 
    ON f.FacultyID = fc.FacultyID
INNER JOIN enrollment.Course c 
    ON fc.CourseID = c.CourseID
ORDER BY 
    f.FacultyID, c.CourseID, fc.CourseSectionNbr;