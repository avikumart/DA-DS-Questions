select de.emp_no,YEAR(de.from_date) AS change_year
from employees.dept_emp AS de
join employees.titles AS t
    ON de.emp_no = t.emp_no AND YEAR(de.from_date) = YEAR(t.from_date)
group By de.emp_no, change_year
order BY de.emp_no
LIMIT 0, 10000;