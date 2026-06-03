/* Get all customers along with there orders but only for customers who have placed the order*/

SELECT *
FROM customers
INNER JOIN orders
ON id = customer_id

-- OR

SELECT
	customers.id,
	customers.first_name,
	customers.country,
	orders.order_id,
	orders.sales

FROM customers
INNER JOIN orders
ON customers.id = orders.customer_id

