SELECT
	*
FROM public.customer AS c
WHERE c.store_id = 1 AND c.first_name  NOT LIKE 'J%' AND c.last_name NOT LIKE 'R%'