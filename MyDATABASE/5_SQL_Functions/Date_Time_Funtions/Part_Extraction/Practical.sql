/*How many orders where place in each year*/

SELECT
YEAR(OrderDate),
COUNT(*) AS No_of_orders

FROM Sales.Orders
GROUP BY YEAR(OrderDate);

/* How many order where place each months*/

SELECT
--MONTH(OrderDate), -- it will give the months in no.
DATENAME(MONTH,OrderDate) AS order_date,
COUNT(*) AS No_of_order_place_months_wise
FROM Sales.Orders
--GROUP BY MONTH(OrderDate)
GROUP BY DATENAME(MONTH,OrderDate)

/* Show all order that were placed in the month of february*/

SELECT *

FROM Sales.Orders
WHERE MONTH(OrderDate) = 2