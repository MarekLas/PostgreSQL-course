
SELECT
	f.title, f.release_year
--	, i.store_id
	, COALESCE(c.city, '*** not available ***') AS store
FROM film AS f
LEFT OUTER JOIN inventory AS i ON i.film_id = f.film_id
LEFT JOIN store s ON s.last_update = i.last_update
LEFT JOIN address a ON a.address_id = s.address_id
LEFT JOIN city c ON c.city_id = a.city_id
WHERE f.title LIKE 'A%' AND i.inventory_id IS NULL


/*
SELECT
	f.title, f.release_year
--	, i.store_id
	, COALESCE(c.city, '*** not available ***') AS store
FROM inventory AS i 
RIGHT JOIN film AS f ON i.film_id = f.film_id
LEFT JOIN store s ON s.last_update = i.last_update
LEFT JOIN address a ON a.address_id = s.address_id
LEFT JOIN city c ON c.city_id = a.city_id
WHERE f.title LIKE 'A%' AND i.inventory_id IS NULL
*/