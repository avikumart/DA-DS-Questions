select DepartmentID, MIN(EnrollmentDt) as minenrollmentDt, MAX(EnrollmentDt) as maxenrollmentDt
from enrollment.student
group by DepartmentID;