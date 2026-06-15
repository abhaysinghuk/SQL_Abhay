-- USE CASE--> 1  *** DIVISON BY ZERO   ***

/* Find the sales price of each order by dividing the sales by the quantity */

SELECT

OrderID,
Sales,
Quantity,

Sales/NULLIF(Quantity, 0) AS Price

FROM Sales.Orders