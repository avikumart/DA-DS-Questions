USE hr_emp;


-- -------------------------------------
-- Aggregate functions
-- -------------------------------------

-- Min
-- MAx
-- Sum
-- Avg
-- Count

Select min(salary) from employees;
Select max(salary) from employees;
Select sum(salary) from employees;
Select avg(salary) from employees;
Select count(salary) from employees;
select count(*) from employees;
select count(commission_pct) from employees;

select * from employees;

Select avg(salary) from employees
where department_id = 70;

Select min(salary) from employees
where department_id = 70;

-- Aggregate with group by  clause
select avg(salary) from employees;
 
select * from employees;

select department_id, avg(salary) 
from employees
group by department_id;



-- Aggregate with where and group by clause 
select department_id, avg(salary) 
from employees
where department_id is not null
group by department_id;

select * from employees;

select department_id, job_id, avg(salary) 
from employees
where department_id is not null
group by department_id, job_id
;

select department_id, min(salary) 
from employees
group by department_id;

-- Aggregate with having clause 
select department_id, min(salary) 
from employees
group by department_id
having min(salary)>=7000;


select department_id, avg(salary) 
from employees
where department_id is not null
group by department_id
having avg(salary)>10000;






