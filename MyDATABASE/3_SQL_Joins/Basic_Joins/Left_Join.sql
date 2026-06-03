/* Get all customers along witht their orders including those with orders*/

SELECT 
	c.id,
	c.first_name,
	o.order_date,
	o.sales

FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id

/*SELECT *
FROM customers

SELECT *
FROM orders*/

/*Question 2 --> Get all customers along with their orders, include order without matching customers*/

SELECT 
    c.id,
    c.first_name,
    o.order_date,
    o.sales
FROM customers AS c
LEFT JOIN orders AS o
ON o.customer_id = c.id;
