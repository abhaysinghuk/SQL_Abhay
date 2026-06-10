/* Date_Name*/

SELECT

CreationTime,

DATENAME(Month, CreationTime) AS Name_of_month,
DATENAME(WEEKDAY, CreationTime) AS Name_of_Day


FROM Sales.Orders