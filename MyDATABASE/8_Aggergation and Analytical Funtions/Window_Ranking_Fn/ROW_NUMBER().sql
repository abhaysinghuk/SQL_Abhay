-- Rank the orders based on their sales from highest to lowest

SELECT
	OrderID,
	OrderDate,
	Sales,

	ROW_NUMBER() OVER(ORDER BY Sales DESC)
FROM Sales.Orders

------------------------------------------------------------

-- USE CASE OF IT
-- TOP-N Analysis

-- Find the top highest sales for each product

SELECT *
FROM (
SELECT
	OrderID,
	ProductID,
	Sales,

	ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) Rank_Product


FROM Sales.Orders)t WHERE Rank_Product = 1
---------------------------------------------------------------------

-- USE CASE---> BOTTOM-N Analysis
-- Find the lowest to customers based on their total sales 
SELECT
*
FROM(
SELECT
	
	CustomerID,
	
	SUM(Sales) AS Total_Sales,
	ROW_NUMBER() OVER(ORDER BY SUM(Sales)) AS Rank_Product
	

FROM Sales.Orders
GROUP BY 
CustomerID )t WHERE Rank_Product <=2
---------------------------------------------------------------------------
-- USE CASE-----> Generate Unique IDs

-- Assigns unique ids to the row of OrderArchive table

SELECT
	ROW_NUMBER() OVER(ORDER BY OrderID, OrderDate) AS Unique_ID,
	*
FROM Sales.OrdersArchive

-----------------------------------------------------------------------------------

-- USE_CASE ---------> Identify Dublicates

-- Identify dublicates rows in a table orderArc, and return a clean result with no dublicates
SELECT * FROM(
SELECT
ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) RN,
*
FROM Sales.OrdersArchive)t WHERE rn=1