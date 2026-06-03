/* Get all customers along with their Orders, include orders without matching customers*/


SELECT 
	c.id,
	c.first_name,
	o.order_date,
	o.sales

FROM customers AS c
RIGHT JOIN orders AS o
ON c.id = o.customer_id