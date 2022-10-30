SELECT
	UPPER(company_name) AS company_name
	, LOWER(contact_title) AS title
	, CONCAT(LEFT(company_name,3), RIGHT(city,3)) AS code
	, CASE
		WHEN POSITION(',' IN address) > 0
			THEN SUBSTRING(address FROM 1 FOR POSITION(',' IN address)-1)
		ELSE address
	END AS address_1
	, CASE
		WHEN POSITION(',' IN address) > 0
			THEN SUBSTRING(address FROM POSITION(',' IN address)+1 FOR LENGTH(address) - POSITION(',' IN address))
		ELSE ''
	END AS address_2
FROM customers;