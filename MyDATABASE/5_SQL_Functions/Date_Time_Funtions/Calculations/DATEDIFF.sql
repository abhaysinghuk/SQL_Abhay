/* Calculate the age of empolyee*/
SELECT 
EmployeeID,
BirthDate,
DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age

FROM Sales.Employees

/* Find the Avg Shipping duration in the days for each months */

SELECT

MONTH(OrderDate) AS Order_Date,


AVG(DATEDIFF(day, OrderDate, ShipDate)) AS Avg_Shipping_duration
FROM Sales.Orders
GROUP BY MONTH(OrderDate)
----------------------------------------------------------------------------------
/* Time Gap Analysis */
/* Find number of days b/w each order and prevoius order. */

 