/*
SELECT
	o.order_date
	, o.shipped_date
	, AGE(o.shipped_date, o.order_date) AS process_time

FROM orders AS o
*/
/*
SELECT
	AVG(AGE(o.shipped_date, o.order_date)) AS avg_process_time
FROM orders AS o
*/
/*
SELECT NOW()::DATE AS today
	, order_date
	, AGE(NOW()::DATE, order_date)AS time_to_today
FROM orders
WHERE shipped_date IS NULL
*/
/*
SELECT 
	DATE '2000-01-01' AS close_day
	, order_date
	, AGE(DATE '2000-01-01', order_date)AS time_to_today
FROM orders
WHERE shipped_date IS NULL
*/
/*
SELECT
	order_date
	, COALESCE(shipped_date, order_date + INTERVAL '1 month') AS defuault_ship_day
FROM orders
*/
SELECT
	order_date
	, EXTRACT('year' FROM order_date) AS year
	, EXTRACT('month' FROM order_date) AS month
	, EXTRACT('day' FROM order_date) AS day
FROM orders;
