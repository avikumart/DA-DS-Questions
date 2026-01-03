SELECT de.emp_no, de.dept_no, e.hire_date
FROM employees.DEPT_EMP AS de
JOIN employees.EMPLOYEES AS e ON de.emp_no = e.emp_no
INNER JOIN
    ( SELECT de_min.dept_no, MIN(e_min.hire_date) AS earliest_hire_date
        FROM employees.DEPT_EMP AS de_min
        JOIN employees.employees AS e_min ON de_min.emp_no = e_min.emp_no
        GROUP BY de_min.dept_no
    ) AS MinHires ON de.dept_no = MinHires.dept_no 
WHERE e.hire_date = MinHires.earliest_hire_date
order by de.emp_no; 