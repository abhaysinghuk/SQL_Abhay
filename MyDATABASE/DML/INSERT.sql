/* Insert the data from coustomers to persons*/
INSERT INTO persons (id, first_name, country, score)
SELECT
    id,
    first_name,
    NULL,
    1
FROM customers;

SELECT * FROM persons