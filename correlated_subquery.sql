SELECT
	f.title, f.rental_rate, f.length
FROM film f
WHERE f.length > (SELECT AVG(fsub.length) FROM film fsub WHERE fsub.rental_rate = f.rental_rate)
ORDER BY f.rental_rate, f.length