select*from enrollment.Student
where EnrollmentDt = (
select MIN(EnrollmentDt)
from student);