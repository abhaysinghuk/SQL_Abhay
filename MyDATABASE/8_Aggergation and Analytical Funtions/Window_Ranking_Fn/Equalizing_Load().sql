-- in order to export the data divide the order into 2 groups.

SELECT
NTILE(2) OVER(ORDER BY Sales) AS Buckets ,

*
FROM Sales.Orders