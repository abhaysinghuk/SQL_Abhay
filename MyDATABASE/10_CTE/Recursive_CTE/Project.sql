-- Generate a sequence from 1 to 20

WITH Series AS
(
	SELECT
		  1 AS My_Number

	UNION ALL

	SELECT
	My_Number + 1
	FROM Series
	WHERE My_Number < 100

)

SELECT *
FROM Series
OPTION (MAXRECURSION 1000)