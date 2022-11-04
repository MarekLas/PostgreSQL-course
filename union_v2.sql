SELECT
	e.last_name, e.first_name, 'EMPLOYEE' AS type
FROM employees e
UNION ALL
SELECT
	SUBSTRING(c.contact_name, POSITION(' ' IN c.contact_name)+1, LENGTH(c.contact_name)- POSITION(' ' IN c.contact_name))
	, LEFT(c.contact_name, POSITION(' ' IN c.contact_name))
	, 'CUSTOMER'
FROM customers c
UNION ALL
SELECT
	SUBSTRING(s.contact_name, POSITION(' ' IN s.contact_name)+1, LENGTH(s.contact_name)- POSITION(' ' IN s.contact_name))
	, LEFT(s.contact_name, POSITION(' ' IN s.contact_name))
	, 'SUPPLIER'
FROM suppliers s
UNION ALL
SELECT
	si.company_name
	, ''
	, 'SHIPPER'
FROM shippers si