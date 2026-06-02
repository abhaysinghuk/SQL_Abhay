/*Retrieve all coustomers from Germany*/ -- =

SELECT *
FROM customers
WHERE country = 'Germany'

/* Not equl to Germany*/ -- !=

SELECT *
FROM customers
WHERE country != 'Germany'


/* coustomer score greater then 500*/ -- >

SELECT *
FROM customers
WHERE score > 500

