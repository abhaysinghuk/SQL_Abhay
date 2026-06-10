/* Find the customers whose first name contain Leading or Trailing space */

SELECT 
first_name,

	LEN(first_name) AS lenght_char,
	LEN(TRIM(first_name)) As new_length,
	LEN(first_name) - LEN(TRIM(first_name)) AS sub_length

FROM customers
WHERE LEN(first_name) != LEN(TRIM(first_name))

--WHERE first_name != TRIM(first_name)  (This is more essay) 