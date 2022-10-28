/*
SELECT
	category_id
	, SUM(units_in_stock)
FROM products AS p
GROUP BY p.category_id
HAVING SUM(units_in_stock) >= 500
*/

/*
SELECT
	c.country
	, COUNT(*)
FROM customers AS c
GROUP BY c.country
HAVING COUNT(*) >= 10
ORDER BY COUNT(*) DESC
*/

SELECT
	c.contact_title
	, COUNT(*)
FROM customers as c
GROUP BY c.contact_title
HAVING COUNT(*) >= 5