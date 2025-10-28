select s.store_id, count(i.inventory_id) as inventory_count
from sakila.rental r
right join sakila.inventory i using (inventory_id)
join sakila.store s using(store_id)
where r.rental_id is null
group by s.store_id
order by s.store_id;