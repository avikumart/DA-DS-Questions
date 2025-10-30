SELECT 
    s.StudentID, s.StudentFirstNm,s.StudentLastNm,d.DepartmentID,d.DepartmentName,
    c.CourseName,sc.CourseSectionNbr,sc.CourseGrade,f.FacultyFirstNm, f.FacultyLastNm
FROM Student s
INNER JOIN enrollment.department d ON s.DepartmentID = d.DepartmentID
INNER JOIN enrollment.studentcourse sc ON s.StudentID = sc.StudentID
INNER JOIN enrollment.Course c on c.CourseID = sc.CourseID
INNER JOIN enrollment.coursefaculty cf on c.CourseID = cf.CourseID
INNER JOIN enrollment.faculty f on cf.FacultyID = f.FacultyID
ORDER BY 
    s.StudentID,d.DepartmentID,c.CourseID,sc.CourseSectionNbr,f.FacultyLastNm;