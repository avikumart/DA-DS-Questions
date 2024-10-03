USE hr_emp;

-- -------------------------------------
-- String functions
-- -------------------------------------
-- no of characters in a string

select length ('Great Learning');

select * from employees;
select first_name, length(first_name) as char_len from employees;

SELECT length('MySQL') as CHAR_LEN;

-- concat strings
select concat ('great ', 'learning') as Label;
select concat(first_name,' ', last_name) as Employee_name from employees;
select * from employees;
select concat(first_name,' ', last_name,'-', job_id) as Employee_name from employees;


SELECT CONCAT( 'great', 'learning') as CONCAT_STR;

-- Upper and lower case
select upper(first_name) from employees;
select first_name, upper(first_name) , ucase(first_name) from employees;

select first_name, lower(first_name) , lcase(first_name) from employees;

SELECT lower ("Great Learning")as LCASE;
SELECT upper("Greatlearning")as UCASE;

-- Substring

SELECT SUBSTR("Great Learning", 1, 5) AS ExtractedString;
SELECT SUBSTR("Great Learning", 1, 1) AS ExtractedString;
SELECT SUBSTR("Great Learning", 7, 2) AS ExtractedString;
SELECT SUBSTR("Great Learning", -1, 1) AS ExtractedString;


-- Replace
SELECT REPLACE("Great Lakes", "Lakes", "Learning") from dual;
SELECT REPLACE("Great Lakes", "Lakes", "Learning") as Replaced;

select * from employees;
select job_id, replace(job_id, 'PRES','President') from employees;

-- Trimming
select ltrim('  Great Lakes') from dual;
select rtrim('  Great Lakes    ') from dual;
select trim('  Great Lakes    ') from dual;
select trim('Great' from 'Great Lakes    ') from dual;
select trim('$' from '180.33$$') from dual;

SELECT TRIM( 'Great' from 'Great Learning') AS TrimmedString;


-- Reverse a string
select reverse('great') as reversed_string from dual;

SELECT Reverse("Great Learning") AS ExtractedString;





-- -------------------------------------
-- Numerical functions
-- -------------------------------------

select 25+7, 25-7, 25*7,25/7 ;

select 25 mode7, 25 div 7;

SELECT COS(0) As Cos;


SELECT COS(1) As Cos;

-- Ceil, floor
select ceil(57.0001), ceil(57.898) ;
select floor(57.0001), floor(57.898) ;


-- round/trunc

select round(57.4982,2), round(57.898,2) ;
select truncate(57.4982,2), truncate(57.898,2) ;


-- least greatest
select least(10,20,30) from dual;
select greatest(10,20,30) from dual;

select least(20,5,30);

select greatest(20,5,30);

select * from employees;

select salary, salary * .1 as Bonus from employees;

select sqrt(121) from dual;
select power(3,2) from dual;

select abs(-324) from dual;
select sign(-76), sign( 76), sign(0) from dual;

-- -------------------------------------
-- Date functions
-- -------------------------------------
SELECT NOW();
SELECT CURDATE();
SELECT CURTIME();
select sysdate();

select datediff(curdate(), '2021-01-01');
select datediff(curdate(), '2003-05-15')/365;

select date_add( curdate(), interval 10 day);
select date_add( curdate(), interval 1 month);

select day(curdate()), month(curdate()), year(curdate());
select dayname(curdate());
select dayofyear(curdate());
select dayofweek(curdate());
select last_day(curdate()) ;

-- Date formatting
select date_format(curdate(), '%d-%b-%Y');
select date_format(curdate(), '%D-%m-%y');
select date_format(curdate(), '%D, %b, %Y');


-- -------------------------------------
-- Conversion functions
-- -------------------------------------
SELECT CAST(150 AS CHAR);

select * from employees;

select * from employees 
where commission_pct is null;

select employee_id, first_name,salary, commission_pct ,
coalesce(commission_pct,0)
from employees;

select employee_id, first_name,salary, ifnull(commission_pct,0)
from employees;

select employee_id, first_name,salary, coalesce(commission_pct,0)
from employees;

select coalesce(NULL,1,2,'Great Learning');



-- sorting data
select * from employees;


-- order by
select * from employees
order by first_name asc;


select * from employees
order by first_name desc;


select * from employees
order by salary;

select * from employees
order by salary desc;

select * from employees
order by first_name, last_name;