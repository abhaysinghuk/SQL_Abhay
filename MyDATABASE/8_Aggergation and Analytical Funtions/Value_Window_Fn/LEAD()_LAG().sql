-- Analysis the month over month (MoM) performance by finding the percentage change in a sale 
-- b/w the current and previous month
SELECT
*,
Current_Month_Total_Sales - Previous_Month_Sales AS MoM_Change,
ROUND(CAST((Current_Month_Total_Sales - Previous_Month_Sales) AS float)/Previous_Month_Sales, 1) AS MoM_Percentage_
FROM(
SELECT
	
	MONTH(OrderDate) AS OrderMonth,
	SUM(Sales) AS Current_Month_Total_Sales,
	LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) AS Previous_Month_Sales
	
FROM Sales.Orders
GROUP BY 
	MONTH(OrderDate)
)t

---------------------------------------------------------------------------------

-- USE Case
--> Customer Retention Analysis

/* In oder to analysis customer loyalty, rank the customer based on the avg days b/w their order*/
SELECT
CustomerID,
AVG(Days_Gap) AS Avg_,
RANK() OVER(ORDER BY COALESCE(AVG(Days_Gap), 9999)) AS Rank_Avg

FROM(
SELECT
	
	OrderID,
	CustomerID,
	OrderDate AS Current_Order,

	LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate) AS Next_Order,
	DATEDIFF(day, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate)) AS Days_Gap
FROM Sales.Orders
)t
GROUP BY CustomerID


