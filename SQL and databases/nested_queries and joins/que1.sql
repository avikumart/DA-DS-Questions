select  c.name, count(fc.film_id)as  countoffilm
from sakila.category  c
join sakila.film_category fc using (category_id)
left join sakila.inventory i using(film_id)
where i.inventory_id is null
group by c.category_id, c.name
order by c.name;
