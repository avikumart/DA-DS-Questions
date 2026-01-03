select f.title AS film_title, case
        when r.rental_id is not null then 'Rented in 2005'
        else 'Never Rented in 2005' end as rental_status
from sakila.film AS f
join sakila.inventory AS i ON f.film_id = i.film_id
left JOIN sakila.rental AS r ON i.inventory_id = r.inventory_id
and  r.rental_date between '2005-01-01' and '2005-12-31' 
group by f.film_id, f.title, rental_status
order by rental_status, f.title;

SELECT
    f.title AS film_title,
    'Rented in 2005' AS rental_status
FROM sakila.film AS f
JOIN sakila.inventory AS i ON f.film_id = i.film_id
JOIN sakila.rental AS r ON i.inventory_id = r.inventory_id
WHERE r.rental_date BETWEEN '2005-01-01' AND '2005-12-31'
GROUP BY f.film_id, f.title
UNION
SELECT f.title AS film_title, 'Never Rented in 2005' AS rental_status
FROM sakila.film AS f
JOIN sakila.inventory AS i ON f.film_id = i.film_id 
WHERE f.film_id NOT IN (
        SELECT film_id
        FROM sakila.inventory AS inv
        JOIN sakila.rental AS r ON inv.inventory_id = r.inventory_id
        WHERE r.rental_date BETWEEN '2005-01-01' AND '2005-12-31'
    )
GROUP by f.film_id, f.title
ORDER by rental_status, film_title;