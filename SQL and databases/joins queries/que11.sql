SELECT 
    s.StudentID, s.StudentFirstNm,s.StudentLastNm,d.DepartmentID,d.DepartmentName,
    c.CourseID,c.CourseName,sc.CourseSectionNbr
FROM enrollment.Student s
INNER JOIN enrollment.department d ON s.DepartmentID = d.DepartmentID
INNER JOIN enrollment.studentcourse sc ON s.StudentID = sc.StudentID
INNER JOIN enrollment.Course c on c.CourseID = sc.CourseID
ORDER BY 
    s.StudentID,d.DepartmentID,c.CourseID,sc.CourseSectionNbr;
