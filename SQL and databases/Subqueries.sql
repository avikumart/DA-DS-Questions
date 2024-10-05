USE hr_emp;

-- Single row subquery
select * from employees
where department_id = (
select department_id from departments
where department_name='Human Resources');



-- Multiple  row subquery
select * from employees
where department_id in (
select department_id from departments
where department_name in('Finance','Executive'));


select * from employees
where salary> (select avg(salary) from employees);

-- correlated subquery 
select * from employees o
where exists  (select avg(salary) from employees i
where i.department_id = o.department_id);


-- Nested subquery

select * from employees where department_id in(
select department_id from departments where location_id in (
select location_id from locations  where city='panaji'));