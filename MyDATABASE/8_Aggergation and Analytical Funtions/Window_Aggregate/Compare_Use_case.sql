/* Find the percentage contribution of each product's sales to the total sales */

SELECT
OrderID,
ProductID,
Sales,
SUM(Sales) OVER() AS Total_Sales,
ROUND(Cast (Sales AS float)/SUM(Sales) OVER() * 100, 2) AS Percentage_Total_sales
FROM Sales.Orders