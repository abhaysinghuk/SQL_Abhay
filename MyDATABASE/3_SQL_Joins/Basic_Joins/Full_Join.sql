SELECT 
	c.id,
	c.first_name,
	o.order_date,
	o.sales

FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id