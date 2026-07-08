-- Find product that have a price higher then the avg price of all product.

SELECT
	ProductID,
	Price
	
FROM Sales.Products			-- Subquery
WHERE Price > (SELECT AVG(Price) FROM Sales.Products)



