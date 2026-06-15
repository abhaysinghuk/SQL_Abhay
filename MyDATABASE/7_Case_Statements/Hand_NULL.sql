-- Find the avg score of customer and treat as 0
-- Additional provide the details CustimerID and lastname

SELECT
CustomerID,
LastName,
Score,

AVG(Score) OVER() AvgCustomer
FROM Sales.Customers