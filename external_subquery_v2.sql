/*
SELECT
	*
FROM orders
WHERE employee_id IN
	(SELECT
		employee_id
	FROM employees e
	WHERE e.last_name = 'Buchanan')
*/
/*
SELECT
	*

FROM orders o
JOIN employees e ON o.employee_id = e.employee_id
WHERE e.last_name = 'Buchanan'
*/
/*
SELECT
	*
FROM orders o 
WHERE o.customer_id IN
	(SELECT
		c.customer_id
	FROM customers c
	WHERE country = 'USA')
*/
SELECT
	*
FROM customers c
JOIN orders o ON o.customer_id = c.customer_id
WHERE c.country = 'USA'
