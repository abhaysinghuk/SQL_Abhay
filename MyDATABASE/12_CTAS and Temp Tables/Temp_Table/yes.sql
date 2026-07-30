SELECT
*
INTO #Orders
FROM Sales.Orders

-- viewing the temp table
SELECT
*
INTO Sales.Ordertest
FROM #Orders

SELECT
*

FROM Sales.Orders

DELETE FROM #Orders
WHERE OrderStatus = 'Delivered'