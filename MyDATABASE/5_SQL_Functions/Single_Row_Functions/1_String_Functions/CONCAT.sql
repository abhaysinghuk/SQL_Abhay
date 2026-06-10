/* Show the list of customers first name together with their country in one columns*/

SELECT 
first_name,
country,

CONCAT(first_name, ' ', country) AS name_country

FROM customers