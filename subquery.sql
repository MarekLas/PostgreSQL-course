--SELECT MAX(rental_rate) FROM film

--SELECT * FROM film WHERE rental_rate = 4.99
--SELECT * FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film)
--SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
--SELECT * FROM film WHERE rental_rate > (SELECT AVG(rental_rate) FROM film)

SELECT 
	f.title
	, f.rental_rate
	, ROUND((SELECT AVG(rental_rate) FROM film),2) AS avg_price
	, ROUND(f.rental_rate - (SELECT AVG(rental_rate) FROM film),2) AS difference
FROM film f
WHERE f.rental_rate > (SELECT AVG(rental_rate) FROM film)