-- find the product which have the price higher then the avg  price of all product

-- main_Query
SELECT
*
FROM
-- Subquery
	(SELECT
		ProductID,
		Price,
		AVG(Price) OVER() AS Avg_Price
	FROM Sales.Products)t
WHERE Price > Avg_Price

-------------------------------------------------------------

-- Rand the customer based on their total amount of sales

