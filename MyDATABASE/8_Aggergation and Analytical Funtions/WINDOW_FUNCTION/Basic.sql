-- Find the total sales across all orders

SELECT
SUM(Sales) AS Toatal_Sales
FROM Sales.Orders

-- Find total sales for each products

SELECT
ProductID,
SUM(Sales) AS Toatal_Sales
FROM Sales.Orders
GROUP BY ProductID

-- Find total sales for each products additionally provide details such as orderID, order date
--( All columns selected much be include in group by )
SELECT
OrderID,
OrderDate,
ProductID,
SUM(Sales) AS Toatal_Sales
FROM Sales.Orders
GROUP BY ProductID, OrderID, OrderDate

------------------------------------------------------------------------

-- using the WINDOW Fns
-- Find total sales for each products additionally provide details such as orderID, order date
SELECT
	ProductID,
	SUM(Sales) OVER(PARTITION BY ProductID) AS ToatlSalesByProduct
FROM Sales.Orders

SELECT
	*
FROM Sales.Orders