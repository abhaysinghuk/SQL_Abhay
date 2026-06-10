/* get the string after the first character */

SELECT
	
	first_name,

	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS first_name_after

FROM customers