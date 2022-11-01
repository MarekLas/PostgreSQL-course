/*
SELECT
	p.product_name
FROM products AS p
LEFT JOIN order_details od ON od.product_id = p.product_id
WHERE od.order_id IS NULL
*/
/*
SELECT
	c.company_name
	, o.order_id
FROM customers AS c
LEFT JOIN orders o ON o.customer_id = c.customer_id
WHERE o.order_id IS NULL
*/
/*
SELECT
	COUNT(*)
FROM customers AS c
LEFT JOIN orders o ON o.customer_id = c.customer_id
*/
/*
SELECT
	COUNT(*)
FROM customers AS c
RIGHT JOIN orders o ON o.customer_id = c.customer_id
*/
