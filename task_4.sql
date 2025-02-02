-- Use the database passed as an argument
USE DATABASE;

-- Query the INFORMATION_SCHEMA to get details about the columns in the 'books' table
SELECT COLUMN_NAME AS 'Column Name',
       COLUMN_TYPE AS 'Column Type',
       IS_NULLABLE AS 'Is Nullable',
       COLUMN_DEFAULT AS 'Default Value',
       EXTRA AS 'Extra Information'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store'
  AND TABLE_NAME = 'books';
-- This script lists the columns in the books table using SHOW CREATE TABLE
SHOW CREATE TABLE books;

