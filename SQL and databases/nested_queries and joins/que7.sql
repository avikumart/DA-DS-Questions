SELECT de.emp_no, YEAR(de.from_date) AS change_year
FROM employees.DEPT_EMP AS de
WHERE EXISTS (SELECT 1 FROM employees.TITLES AS t WHERE
 t.emp_no = de.emp_no AND YEAR(t.from_date) = YEAR(de.from_date)
    ) GROUP BY de.emp_no, change_year ORDER BY
    de.emp_no, change_year;