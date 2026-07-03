/* Find the total sales across all orders and the total sales for each product 
   Also provide the detail orderID and OrderDate */

SELECT
OrderDate,
OrderID,
Sales,
SUM(Sales) OVER() AS sales_across_all,
SUM(Sales) OVER(PARTITION BY ProductID) AS sales_each_product
FROM Sales.Orders