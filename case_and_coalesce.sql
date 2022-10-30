/*
SELECT
	company_name
	, COALESCE(region, country) AS region_country
	, COALESCE(fax, phone) AS fax_phone
	, COALESCE(homepage, 'no website') AS website
FROM suppliers
*/
/*
SELECT
	order_id
	, COALESCE(CAST(shipped_date AS VARCHAR(10)), 'not shipped yet') AS shipping_info
FROM orders
ORDER BY shipping_info DESC
*/
SELECT
	product_name
	, category_id
, CASE
	WHEN category_id = 1 THEN 'Baverages'
	WHEN category_id = 2 THEN 'Condiments'
	WHEN category_id = 3 THEN 'Confections'
	ELSE 'Other'
END
FROM products