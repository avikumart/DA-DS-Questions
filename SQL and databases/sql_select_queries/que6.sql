Select StudentFirstNm, StudentLastNm, EnrollmentDt, year(EnrollmentDt) as YearofEnrollment 
from enrollment.Student
order by YearofEnrollment, StudentLastNm;
