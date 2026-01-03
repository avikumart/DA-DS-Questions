select  StudentFirstNm, StudentLastNm, EnrollmentDt from enrollment.Student
where EnrollmentDt between "2022-03-23" and "2022-08-10"
order by EnrollmentDt;