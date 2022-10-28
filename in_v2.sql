/*
SELECT
	*
FROM public.customers
WHERE city IN('Berlin', 'London', 'Madrid')
*/
/*
SELECT
	*
FROM public.customers
WHERE country NOT IN ('Brazil', 'USA', 'Venezuela')
*/

SELECT
	*
FROM products 
WHERE category_id NOT IN (1, 2, 3) AND quantity_per_unit IN ('25 -825 g cans.', '4-450 g glasses.','12 -12 oz cans.', '10 - 500 g pkgs.')