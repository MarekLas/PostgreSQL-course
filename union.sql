SELECT
	c.first_name AS firstname, c.last_name, a.address, a.address2, ct.city, cn.country
FROM customer c
JOIN address a ON c.address_id = a.address_id
JOIN city ct ON a.city_id = ct.city_id
JOIN country cn ON ct.country_id = cn.country_id
UNION
SELECT
	s.first_name, s.last_name, a.address, a.address2, ct.city, cn.country
FROM staff s
JOIN address a ON s.address_id = a.address_id
JOIN city ct ON a.city_id = ct.city_id
JOIN country cn ON ct.country_id = cn.country_id
UNION ALL
SELECT
	CAST(st.store_id AS VARCHAR(10)), NULL, a.address, a.address2, ct.city, cn.country
FROM store st
JOIN address a ON st.address_id = a.address_id
JOIN city ct ON a.city_id = ct.city_id
JOIN country cn ON ct.country_id = cn.country_id;