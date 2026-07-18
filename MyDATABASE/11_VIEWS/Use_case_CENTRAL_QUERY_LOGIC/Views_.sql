-- Find the running of total sales for each month]
-- ** Here we are using CTE
/*
WITH CTE_MONTHLY_SUMMARY AS
(
	SELECT
		DATETRUNC(month, OrderDate) AS OrderMonth,
		SUM(Sales) AS Total_Sales,
		COUNT(OrderID) AS Total_Orders,
		SUM(Quantity) AS Total_quanity
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
)
SELECT
	OrderMonth,
	Total_Sales,
	Total_Orders,
	Total_quanity,
	SUM(Total_Sales) OVER(ORDER BY OrderMonth) AS Running_Total
	FROM CTE_MONTHLY_SUMMARY; */
	-------------------------------------------------------------------

	-- Now what if this query is important for all the other sql query,
	-- So, we will going to use this as a view query so it can be used in all

	CREATE VIEW Sales.View_Monthly_Summary AS
	(
	SELECT
		DATETRUNC(month, OrderDate) AS OrderMonth,
		SUM(Sales) AS Total_Sales,
		COUNT(OrderID) AS Total_Orders,
		SUM(Quantity) AS Total_quanity
	FROM Sales.Orders
	GROUP BY DATETRUNC(month, OrderDate)
	)

	
