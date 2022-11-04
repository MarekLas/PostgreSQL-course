/*
SELECT * FROM actor
WHERE actor_id IN
	(SELECT
		a.actor_id
	FROM actor a
	LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id
	WHERE fa.film_id IS NULL)
*/
/*
DELETE FROM actor WHERE actor_id IN
	(SELECT
		a.actor_id
	FROM actor a
	LEFT JOIN film_actor fa ON fa.actor_id = a.actor_id
	WHERE fa.film_id IS NULL)
*/

SELECT * FROM actor ORDER BY actor_id DESC