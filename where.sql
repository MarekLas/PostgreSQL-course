SELECT
	*
FROM public.products AS p
WHERE p.units_in_stock < p.reorder_level