SELECT
	c.first_name, c.last_name,
	a.address, a.district,
	ci.city, co.country
FROM customer AS c
INNER JOIN address AS a ON a.address_id = c.address_id
JOIN city AS ci ON ci.city_id = a.city_id
JOIN country AS co ON co.country_id = ci.country_id
--WHERE c.first_name = 'Mary' AND c.last_name = 'Smith'