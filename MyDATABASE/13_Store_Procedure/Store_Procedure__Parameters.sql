
-- By this method we donot have to write the code again and again for different parameter

CREATE PROCEDURE USA_Avg_Score__ @Country NVARCHAR(50) AS

BEGIN

SELECT
	COUNT(*) AS Total_Customers,
	AVG(Score) AS Avg_score
	
FROM Sales.Customers
WHERE Country = @Country -- we used our parameter in our query

END

-- Step 3: Excecute the Stored Produre

EXEC USA_Avg_Score__ @Country = 'Germany' -- Passing the parameter to our query

----------------------------------------------------------------------------------------

-- Parameters



