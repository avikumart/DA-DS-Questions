select f.title AS film_title, 'Rented in 2005' AS rental_status
FROM sakila.film AS f
JOIN sakila.inventory AS i ON f.film_id = i.film_id
JOIN sakila.rental AS r ON i.inventory_id = r.inventory_id
WHERE r.rental_date BETWEEN '2005-01-01' AND '2005-12-31'
GROUP BY f.film_id, f.title
UNION
SELECT f.title AS film_title, 'Never Rented in 2005' AS rental_status
FROM sakila.film AS f
JOIN sakila.inventory AS i ON f.film_id = i.film_id 
WHERE not exists (SELECT film_id FROM sakila.inventory AS inv JOIN sakila.rental AS r ON inv.inventory_id = r.inventory_id
        WHERE r.rental_date BETWEEN '2005-01-01' AND '2005-12-31')
GROUP by f.film_id, f.title
ORDER by rental_status, film_title;