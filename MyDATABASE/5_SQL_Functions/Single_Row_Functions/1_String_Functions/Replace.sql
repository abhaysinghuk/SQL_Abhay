/* Remove - from phone_number*/

SELECT
'123-456-789' AS phone_number;

SELECT
'123-456-789' AS phone_number,
REPLACE('123-456-789','-', '' ) AS Clean_Phone_number


/* Replace File Extence from txt to csv */

SELECT
'Report.txt' AS old_text,

REPLACE('Report.txt', 'txt', 'csv') AS New_csv

