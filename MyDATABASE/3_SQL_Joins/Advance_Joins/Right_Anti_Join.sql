/* Get all orders without match customers */

SELECT *
FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id
WHERE c.id IS NULL

/* Get all orders without match customers (Without using Right join)*/

SELECT *
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id
WHERE c.id IS NULL
