-- total no. of orders in each months

-- using TSQL to refersh/update fresh data

IF OBJECT_ID('Sales.MonthlyOrders', 'U') IS NOT NULL
	DROP TABLE Sales.MonthlyOrders
GO

SELECT
	DATENAME(MONTH, OrderDate) AS OrderMonth,
	COUNT(OrderID) AS Totalorders
INTO Sales.MonthlyOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate)


