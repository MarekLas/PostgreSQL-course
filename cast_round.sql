SELECT
	title
	, price
	, length
	, ROUND(CAST (length  AS decimal)/ 60, 2) AS time_in_hours
	, ROUND(price/(length / 60.0),2) AS price_per_hour
FROM public.film_list
WHERE ROUND(price/(length / 60.0),2) >= 6
ORDER BY price_per_hour DESC