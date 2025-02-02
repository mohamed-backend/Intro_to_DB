-- Use the provided database (this will be passed as an argument when executing the script)
USE DATABASE;

-- Query the INFORMATION_SCHEMA to get details about the columns in the 'books' table
SELECT COLUMN_NAME AS 'Column Name',
       COLUMN_TYPE AS 'Column Type',
       IS_NULLABLE AS 'Is Nullable',
       COLUMN_DEFAULT AS 'Default Value',
       EXTRA AS 'Extra Information'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = DATABASE()
  AND TABLE_NAME = 'books';
