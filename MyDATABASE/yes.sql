/*
SELECT TOP 3  *
FROM customers */

/* REtrive the top 3 customer with highest scorce

SELECT TOP 3 *
FROM customers
ORDER BY score DESC*/


/* The lowest 2 coustomer based on scorce

SELECT TOP 2 *

FROM customers

ORDER BY score ASC */


-- Get the 2 most recent orders
SELECT TOP 2 *

FROM orders
ORDER BY order_date DESC






