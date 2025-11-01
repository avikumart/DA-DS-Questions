select staff_id, first_name, last_name
from sakila.staff s
where exists (select 1 from sakila.customer c
 where c.first_name = s.first_name and c.last_name = s.last_name);
 
 select avg(monthly_salaries) as avg_salary
 from (select salary/12 as monthly_salaries from employees.salaries) as ms;
 
 select c.category_id, c.name, count(r.rental_id) 
 as count_of_rentals
 from sakila.category c
 left join sakila.film_category fc using(category_id)
 left join sakila.film f using(film_id)
 left join sakila.inventory i using(film_id)
 left join sakila.rental r using(inventory_id)
 left join sakila.customer cu using(customer_id)
 where cu.email = "WESLEY.BULL@sakilacustomer.org" 
 group by c.category_id, c.name;
 
 
 
 
 
 
