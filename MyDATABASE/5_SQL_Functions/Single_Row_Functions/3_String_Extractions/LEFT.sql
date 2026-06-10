/* get the first 2 char of first_name*/

SELECT 
	first_name,

	LEFT(first_name, '2') AS first_2_char

FROM customers

/* Get the last 2 char of the first name */

SELECT
	first_name,

	RIGHT(first_name, '2') AS Last_2_char
FROM customers