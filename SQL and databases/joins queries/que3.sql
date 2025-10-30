SELECT 
    StudentID, StudentFirstNm, StudentLastNm, StudentPhone, EnrollmentDt
FROM enrollment.Student
WHERE EnrollmentDt > (
    SELECT EnrollmentDt FROM enrollment.Student
    WHERE StudentFirstNm = 'Alfred' 
      AND StudentLastNm = 'Turner'
) ORDER BY StudentID;
