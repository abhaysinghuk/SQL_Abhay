-- A. Categorizing Data

/* Generate a report showing the total sales for each category
 HIGH-> if sales is higher then 50, MEDIUM-> If sales is b/w 20 and 50
 LOW -> if lower then 20 , Sort the catagries from higher to lower */

 -- Aggregating the data

 SELECT 
 Category,
 SUM(Sales) AS Total_Sales

 FROM(
	 SELECT 
	 Sales,
	 OrderID,

	 CASE
		WHEN Sales > 50 THEN 'HIGH'
		WHEN Sales > 20 THEN 'Medium'
		ELSE 'LOW'
	END AS Category
	FROM Sales.Orders
)t
GROUP BY Category
ORDER BY Total_Sales	DESC
