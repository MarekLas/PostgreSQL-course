/*
SELECT
	product_name, unit_price
FROM products p
WHERE 
	p.unit_price > (SELECT 
					AVG(p1.unit_price) 
					FROM products p1
					WHERE p1.category_id = p.category_id)
*/
/*
SELECT
	product_name, unit_price, category_id
	, (SELECT AVG(p1.unit_price) FROM products p1
	  WHERE p1.category_id = p.category_id) AS category_AVG	
FROM products p
WHERE
	p.unit_price > (SELECT 
					AVG(p1.unit_price) 
					FROM products p1
					WHERE p1.category_id = p.category_id)
*/

SELECT
	od.order_id
	, p.product_name
	, od.unit_price * od.quantity AS order_value
	, (SELECT SUM(od1.unit_price * od1.quantity) FROM order_details od1
	  WHERE od1.order_id = od.order_id) AS order_sum
	, 100 * od.unit_price * od.quantity /
			(SELECT SUM(od1.unit_price * od1.quantity) FROM order_details od1
	  		WHERE od1.order_id = od.order_id) AS order_percent
FROM order_details od
JOIN products p ON p.product_id = od.product_id


	