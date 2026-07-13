-- Step 1: Find total sales per customers

WITH CTE_TOTAL_SALES AS
(
SELECT
	CustomerID,
	
	SUM(Sales) AS Total_Sales
FROM Sales.Orders
GROUP BY CustomerID
)

-- STEP 2 -- Find last order date for each customers

, CTE_LAST_ORDER AS
(
SELECT
	CustomerID,
	MAX(OrderDate) AS Last_Date
FROM Sales.Orders
GROUP BY CustomerID
)

-- STEP 3: Rank customers based on total sales per customers (Nested_CTE_

, CTE_Customer_Rank AS
(
SELECT 
	CustomerID,
	Total_Sales,
	RANK() OVER(ORDER BY Total_Sales DESC) AS Customers_Rank
FROM CTE_TOTAL_SALES
)

-- Step 4:  Segment customer based on their total sales.(nested CTE)
, CTE_Customer_Segment AS
(
SELECT
	CustomerID,
	Total_Sales,
	CASE WHEN Total_Sales > 100 THEN 'High'
		 WHEN Total_Sales > 50 THEN 'medium'
		 ELSE 'LOW'
	END AS Customer_Segments
FROM CTE_TOTAL_SALES
)


-- Main Query

SELECT
	c.CustomerID,
	c.FirstName,
	c.LastName,
	cts.Total_Sales, -- Step 1
	cts_lo.Last_Date,  -- Step 2
	cts_Rn.Customers_Rank, -- Step 3
	cts_seg.Customer_Segments -- Step 4
FROM Sales.Customers c
LEFT JOIN CTE_TOTAL_SALES AS cts
ON cts.CustomerID  = c.CustomerID
LEFT JOIN CTE_LAST_ORDER AS cts_lo
ON cts_lo.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Rank AS cts_Rn
ON cts_Rn.CustomerID = c.CustomerID
LEFT JOIN CTE_Customer_Segment AS cts_seg
ON cts_seg.CustomerID = c.CustomerID
