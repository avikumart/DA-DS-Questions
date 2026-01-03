select s.store_id, count(i.inventory_id) as inventory_count
from sakila.rental r
right join sakila.inventory i using (inventory_id) 
join sakila.store s on i.store_id=s.store_id and i.inventory_id is null
group by s.store_id;