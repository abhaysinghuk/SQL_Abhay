-- Show all customers details and find total order for each customers

-- Main_Query
SELECT
	c.*,
	t.Total_Orders
FROM Sales.Customers c

-- SubQuery

LEFT JOIN(

	SELECT

		CustomerID,
		COUNT(*) AS Total_Orders
	
	FROM Sales.Orders
	GROUP BY CustomerID ) t

ON c.CustomerID = t.CustomerID