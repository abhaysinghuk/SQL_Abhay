/* Calculate the moving avg of sales for each product Over the time*/
-- RUNNING TOTAL
SELECT
	OrderID,
	ProductID,
	Sales,
	OrderDate,

	AVG(Sales) OVER(PARTITION BY ProductID) AS Avg_of_productID,
	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) AS RUNNING_Avg
FROM Sales.Orders
----------------------------------------------------------------------------------

/* Calculate the moving avg of sales for each product Over the time, including only the next order */
-- ROLLING TOTAL
SELECT
	OrderID,
	ProductID,
	Sales,
	OrderDate,

	AVG(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) AS ROLLING_AVG

FROM Sales.Orders
