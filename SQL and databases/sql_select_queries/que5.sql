select distinct CourseID, CourseName, CourseCreditCnt from enrollment.course
where CourseID like "DS%"
order by CourseID;