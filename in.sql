SELECT
	*
FROM public.film_list
WHERE rating NOT IN ('G','PG', 'PG-13')

/*
"NC-17"
"PG"
"R"
"PG-13"
"G"
*/