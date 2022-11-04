--INSERT INTO categories(category_id, category_name) VALUES (9,'Bread') RETURNING category_id;
/*
CREATE VIEW customer_names
AS
SELECT
	SUBSTRING(c.contact_name, POSITION(' ' IN c.contact_name)+1,LENGTH(c.contact_name)-POSITION(' ' IN c.contact_name)) AS last_name
	, LEFT(c.contact_name, POSITION(' ' IN c.contact_name)) AS first_name
FROM customers c
*/

--SELECT * FROM  customer_names

--DROP VIEW customer_names
/*
CREATE VIEW customer_names
AS
SELECT
	SUBSTRING(c.contact_name, POSITION(' ' IN c.contact_name)+1,LENGTH(c.contact_name)-POSITION(' ' IN c.contact_name)) AS last_name
	, LEFT(c.contact_name, POSITION(' ' IN c.contact_name)) AS first_name
	, contact_title
FROM customers c
*/

SELECT * FROM  customer_names