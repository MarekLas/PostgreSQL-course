--SELECT * INTO TEMP temp_order_details FROM order_details
/*
SELECT
	SUM(quantity*unit_price)
FROM temp_order_details
*/
/*
DELETE FROM temp_order_details
WHERE product_id IN
	(SELECT
		product_id
	FROM products
	WHERE category_id = 1)
	*/
	/*
UPDATE temp_order_details
SET unit_price = 1.5 * unit_price
WHERE product_id IN
	(SELECT
		product_id
	FROM products
	WHERE category_id = 2)
	*/
	
DROP TABLE temp_order_details
