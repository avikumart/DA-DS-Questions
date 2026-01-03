select c.CourseID, c.CourseName, count(f.FacultyID) as CountofFaculty
from enrollment.Course c right join enrollment.coursefaculty cf on c.CourseID = cf.CourseID
left join enrollment.Faculty f on cf.FacultyID = f.FacultyID
group by c.CourseID, c.CourseName
order by c.CourseName;

SELECT C.CourseName, COUNT(F.FacultyID) AS CourseFacultyCount
FROM Enrollment.Course AS C
INNER JOIN
Enrollment.CourseSection AS CS
ON C.CourseID = CS.CourseID
INNER JOIN
Enrollment.CourseFaculty AS CF
ON CS.CourseID = CF.CourseID
AND CS.CourseSectionNbr = CF.CourseSectionNbr
INNER JOIN
Enrollment.Faculty AS F
ON CF.FacultyID = F.FacultyID
GROUP BY C.CourseName
ORDER BY C.CourseName;