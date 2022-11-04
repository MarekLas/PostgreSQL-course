--SELECT product_id, unit_price, quantity INTO TEMP temp_order_details FROM order_details

--SELECT SUM(quantity * unit_price) FROM temp_order_details

--DELETE FROM temp_order_details WHERE product_id = 1
/*
INSERT INTO temp_order_details
SELECT product_id, unit_price * 0.9, quantity * 1.2
FROM order_details
WHERE product_id = 1
*/

DROP TABLE temp_order_details
