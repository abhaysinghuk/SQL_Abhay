/* Transforms names to lower case and Upper case*/

SELECT 
first_name,

LOWER(first_name) AS lower_case

FROM customers;

SELECT
first_name,

UPPER(first_name) AS Upper_case

FROM customers

