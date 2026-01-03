select c.name, count(r.rental_id) as  total_rentals
from sakila.category c
left join sakila.film_category fc using(category_id)
left join sakila.inventory i using(film_id)
left join sakila.rental r using(inventory_id)
left join sakila.customer cu using(customer_id)
where cu.email = "PATRICIA.JOHNSON@sakilacustomer.org"  or r.rental_id is null
group by c.category_id, c.name
order by c.name;

