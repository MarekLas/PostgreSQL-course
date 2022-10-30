--SELECT NOW() ::TIME, CURRENT_TIMESTAMP, CURRENT_DATE, CURRENT_TIME
SELECT
--	DATE_TRUNC('day',r.rental_date)
--	DATE_PART('year',r.rental_date)
--	DATE_PART('dow',r.rental_date)
--	EXTRACT('dow' FROM r.rental_date)
	r.rental_date
	, r.return_date
	, (r.rental_date + INTERVAL '3 days')::DATE AS expected_return
	, EXTRACT ('day' FROM AGE(r.return_date, r.rental_date)) AS duration
	, DATE '2030-05-01'
	, TIMESTAMP '2030-05-01 13:30:00.000'
FROM rental r