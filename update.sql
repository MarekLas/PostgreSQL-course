/*
SELECT
	*
FROM actor
WHERE actor_id IN
	(SELECT
		fa.actor_id
	FROM film f
	JOIN film_actor fa ON fa.film_id = f.film_id
	WHERE f.film_id = 1)
*/

UPDATE actor
	SET
	first_name = UPPER(first_name)
	, last_name = UPPER(last_name)
WHERE actor_id IN
	(SELECT
		fa.actor_id
	FROM film f
	JOIN film_actor fa ON fa.film_id = f.film_id
	WHERE f.film_id = 1)


