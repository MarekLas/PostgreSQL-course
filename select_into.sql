--SELECT * INTO my_actor FROM actor
/*
SELECT
	a.first_name, a.last_name, COUNT(*)
	INTO TEMPORARY temp_actor
	-- preferences, display, show system objects
FROM actor a
LEFT JOIN film_actor fa ON fa.actor_id= a.actor_id
GROUP BY a.first_name, a.last_name
*/

SELECT *  INTO TEMP temp_actor FROM actor WHERE 1 = 0