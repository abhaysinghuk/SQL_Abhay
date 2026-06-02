/* Customers from USA and score is greater then 500*/ -- AND

SELECT *
FROM customers
WHERE country = 'USA' AND score > 500

/*Customer who are either from USA or having a score greater then 500*/ -- OR

SELECT *
FROM customers
WHERE country = 'USA' OR score > 500

/*Customers whose score is not less then 500*/ -- NOT

SELECT *
FROM customers
WHERE NOT score >= 500