SELECT
	p.product_name
	, p.unit_price
	, p.quantity_per_unit
FROM products AS p
ORDER BY product_name
LIMIT 10 OFFSET 0