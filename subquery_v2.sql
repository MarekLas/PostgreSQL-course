/*
SELECT
	MAX(unit_price)
FROM products
*/
/*
SELECT
	*
FROM products
WHERE unit_price = (SELECT MAX(unit_price) FROM products)
*/
/*
SELECT
	product_name
	, unit_price
	, unit_price - (SELECT AVG(unit_price) FROM products) AS deviation
FROM products
ORDER BY deviation
*/
SELECT
	*
FROM employees
WHERE 
	EXTRACT('year' FROM hire_date) = (SELECT MIN(EXTRACT('year' FROM hire_date)) FROM employees)