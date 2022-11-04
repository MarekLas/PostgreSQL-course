/*
SELECT
	description
FROM categories
WHERE category_id = 9
*/
/*
UPDATE categories
	SET
		description = 'Bakery products'
WHERE category_id = 9
*/
/*
UPDATE products
	SET
		quantity_per_unit = 'pcs'
		, unit_price = 2.49
		, units_in_stock = 98
WHERE product_id = 78
*/
/*
SELECT
	product_id
	, SUM(quantity)
FROM order_details
GROUP BY product_id
HAVING SUM(quantity) < 100
*/
/*
UPDATE products
	SET discontinued = 1
WHERE product_id IN
	(SELECT
	product_id
	--, SUM(quantity)
	FROM order_details
	GROUP BY product_id
	HAVING SUM(quantity) < 100)
*/

