select emp_no, salary
from employees.salaries
where salary > (select avg(salary) from salaries);

SELECT e.emp_no, e.first_name, e.last_name
from employees e
where e.emp_no in (select emp_no from dept_manager);

select emp_no, first_name, last_name, hire_date
from employees 
where  hire_date < all (select hire_date 
from employees 
where emp_no in (select emp_no from dept_manager));

select dept_no
from departments  d
where not exists (select*from dept_manager m where m.dept_no = d.dept_no);

select emp_no, year(from_date) as year 
from employees.titles 
where title = "Manager" and (emp_no, year(from_date)) in (select emp_no, year(from_date) from employees.titles
where title <> "Manager");

select avg(gross) from
(select avg(p.amount) as gross
from sakila.payment p
join sakila.rental r using (rental_id)
join sakila.inventory i using (inventory_id)
join sakila.film f using (film_id)
group by f.film_id) as gross_amount;

select s.staff_id, s.first_name, s.last_name
from sakila.staff s
where exists (select 1 from sakila.customer as c where c.first_name = s.first_name and c.last_name = s.last_name);