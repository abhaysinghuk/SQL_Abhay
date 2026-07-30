-- Step 1: Writing a query 
--Write a query For a US customer Find the total number of customer and the avg score


SELECT
	COUNT(*) AS Total_Customers,
	AVG(Score) AS Avg_score

FROM Sales.Customers
WHERE Country = 'USA'

-- Step 2: Turing the query into Store procedure

CREATE PROCEDURE USA_Avg_Score AS

BEGIN
SELECT
	COUNT(*) AS Total_Customers,
	AVG(Score) AS Avg_score
FROM Sales.Customers
WHERE Country = 'USA'
END

-- Step 3: Excecute the Stored Produre

EXEC USA_Avg_Score



