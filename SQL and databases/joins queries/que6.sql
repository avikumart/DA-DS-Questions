select s.StudentID, s.StudentFirstNm, s.StudentLastNm, d.DepartmentName, d.DepartmentAccronym
from enrollment.Student as s inner join enrollment.department as d on s.DepartmentID = d.DepartmentID
where d.DepartmentName in (select 
DepartmentName
from enrollment.department where DepartmentName in ("Information Sciences","Data Science"))
order by s.StudentID;

