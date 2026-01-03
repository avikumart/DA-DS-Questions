select StudentFirstNm, StudentLastNm, EnrollmentDt from enrollment.Student
where EnrollmentDt > "2022-12-31"
order by EnrollmentDt;
