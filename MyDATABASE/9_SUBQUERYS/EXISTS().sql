-- Show the details of orders made by customers in Germany


-- main Query
-- NON CORRELATED SUBQUERY

SELECT
*
FROM Sales.Orders o
WHERE EXISTS (SELECT 1
		FROM Sales.Customers c
		WHERE Country = 'Germany'
		AND o.CustomerID = c.CustomerID)

--------------------------------------------------------------------
-- CORRELATED SUBQUERY

SELECT
*
FROM Sales.Orders o
WHERE NOT EXISTS (SELECT 1
		FROM Sales.Customers c
		WHERE Country = 'Germany'
		AND o.CustomerID = c.CustomerID)

