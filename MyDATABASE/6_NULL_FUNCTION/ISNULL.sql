 /* Find the Avg score of the Customers */

--------------------------------------- 

-- Use Case 1 --> Data Aggregations
SELECT

CustomerID,
Score,
COALESCE(Score, 0) AS Score2,

AVG(Score) OVER () AvgScores,
AVG(COALESCE(Score, 0)) OVER () AVgScores_2

FROM Sales.Customers;

-----------------------------------------------------

-- Use Case 2 --> Mathematical Operations

/*Display the full name of customers in a single field by merging their 
first and last names, and add 10 bonus points to each customer's score.*/

SELECT
CustomerId,
FirstName,
LastName,
COALESCE(LastName, '') AS LastName_2,
FirstName + ' ' + COALESCE(LastName, '') AS FullName,
Score,
COALESCE(Score, 0) + 10 AS New_Score


FROM Sales.Customers


---------------------------------------------------------------------------------------------

-- USE_Case=3 Handling NULLs -- Sorting Data

/* Sort the customers with the highest to lowest score Appering the NUll at last */

SELECT 

CustomerID,
Score,
CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS FLAG
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score


