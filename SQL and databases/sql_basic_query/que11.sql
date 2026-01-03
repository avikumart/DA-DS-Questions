with LastEnrollment as (
select StudentID, StudentFirstNm, StudentLastNm, StudentAddress, EnrollmentDt,
row_number() over (
partition by year(EnrollmentDt), Month(EnrollmentDt)
order by EnrollmentDt DESC
) as rnk
from enrollment.student
)
select*from LastEnrollment
where rnk =1
order by StudentID;