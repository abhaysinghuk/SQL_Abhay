/* (RANGE) Customers whose score b/w 100 to 500*/ -- Between

SELECT *
FROM customers
WHERE score BETWEEN 100 AND 500

/* (MEMBERSHIP) customer from either Germany or usa*/ 
SELECT *
FROM customers
WHERE country = 'Germany' OR country = 'USA'

SELECT *
FROM customers
WHERE country IN ('Germany' , 'USA')

/* customers whose first name is start with M */ -- LIKE

 