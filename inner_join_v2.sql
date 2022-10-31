/*
SELECT	
	ca.category_name
	, p.product_name
FROM products AS p
JOIN categories AS ca ON ca.category_id = p.category_id
*/
/*
SELECT
	p.product_name
	, s.company_name
FROM products AS p
JOIN suppliers AS s ON s.supplier_id = p.supplier_id
*/
/*
SELECT	
	ca.category_name
	, p.product_name
	, s.company_name
FROM products AS p
JOIN categories AS ca ON ca.category_id = p.category_id
JOIN suppliers AS s ON s.supplier_id = p.supplier_id
*/
/*
SELECT	
	od.unit_price, od.quantity
	, o.order_date
	, p.product_name
	, c.company_name
FROM order_details AS od
JOIN orders AS o ON o.order_id = od.order_id
JOIN products p ON p.product_id = od.product_id
JOIN customers c ON c.customer_id = o.customer_id
*/
SELECT
	c.company_name
	, ROUND(CAST(SUM(od.unit_price*od.quantity) AS DECIMAL(10,2)),2) AS total
FROM order_details AS od
JOIN orders AS o ON o.order_id = od.order_id
JOIN customers AS c ON c.customer_id = o.customer_id
WHERE o.order_date BETWEEN DATE '1997-01-01' AND DATE '1997-12-31'
GROUP BY c.company_name
ORDER BY total DESC
