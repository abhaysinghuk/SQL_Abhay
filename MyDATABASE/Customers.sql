-- Retrieve All Customer Data -- 

/*SELECT 
	first_name,
	country,
	score	
FROM customers*/

-- Retrieve Customer with the score not equal to zero--

SELECT 
	first_name,
	country,
	score
FROM customers
WHERE country = 'Germany'

/* Retrieve Customer with higest score first*/
SELECT*
FROM customers
ORDER BY score DESC

/* Retrieve all the customer and sort the result by the country and then the higest score*/

SELECT*
FROM customers
ORDER BY country ASC, score DESC

/* Find the total score of each country*/

SELECT
	country, 
	
	SUM(score) AS total_score
FROM customers
GROUP BY country

/* Find the total score and the total number of customers for each country(here 2 concept used)*/

SELECT 
	country,
	
	SUM(score) AS total_score,
	COUNT(id) AS total_coustomers
FROM customers
GROUP BY country


