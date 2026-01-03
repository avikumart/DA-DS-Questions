select e.emp_no, e.first_name, e.last_name, e.hire_date
from employees.employees e 
where e.hire_date < any (select e1.hire_date 
                         from employees e1 join titles t1 using(emp_no)
						 where t1.title = "Senior Staff")
order by e.emp_no;