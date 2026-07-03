-- Find total sales acrosses **all orders** additionally provide details such as orderID and orderDate

SELECT
OrderDate,
OrderID,

SUM(Sales) OVER() AS Total_Sales
FROM Sales.Orders;

-- Find total sales for **each product** additionally provide details such as OrderID and OrderDate

SELECT
OrderDate,
OrderID,
ProductID,

SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales
FROM Sales.Orders;

--  Find total sales acrosses **all orders** and Find total sales for **each product** 
-- Find the total sales for each combination of a product and order status

SELECT
OrderDate,
OrderID,
ProductID,
Sales,
OrderStatus,

SUM(Sales) OVER() AS Total_Sales_1,
SUM(Sales) OVER(PARTITION BY ProductID) AS Total_Sales_2,
SUM(Sales) OVER(PARTITION BY ProductID, OrderStatus) AS Total_3
FROM Sales.Orders