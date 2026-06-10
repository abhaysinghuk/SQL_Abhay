SELECT
CreationTime,

EOMONTH(CreationTime) AS End_of_month,

-- we have a trick to get the first day of the month = 1 using Datetrunc

-- DATETRUNC(month, CreationTime) AS First_day_of_month
CAST(DATETRUNC(month, CreationTime) AS date) AS First_day_of_month



FROM Sales.Orders