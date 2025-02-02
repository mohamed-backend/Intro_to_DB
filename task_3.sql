-- Check if the current database is 'alx_book_store'
IF DATABASE() != 'alx_book_store' THEN
    -- If the database is not 'alx_book_store', show an error message
    SELECT 'Error: You are not using the alx_book_store database.' AS error_message;
    -- Optionally, exit the script after showing the error
    LEAVE;
ELSE
    -- Use the correct database
    USE alx_book_store;

    -- Show all tables in the 'alx_book_store' database
    SHOW TABLES;
END IF;
