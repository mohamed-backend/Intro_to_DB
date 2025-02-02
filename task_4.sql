#!/bin/bash

# Define the SQL file
SQL_FILE="task_4.sql"
DATABASE_NAME="alx_book_store"

# Check if the SQL file exists
if [ ! -f "$SQL_FILE" ]; then
    echo "Error: $SQL_FILE does not exist."
    exit 1
fi

# Check if the SQL file is empty
if [ ! -s "$SQL_FILE" ]; then
    echo "Error: $SQL_FILE is empty."
    exit 1
fi

# Execute the SQL script with the MySQL command
mysql -u root -p "$DATABASE_NAME" < "$SQL_FILE"

# Check if the MySQL command was successful
if [ $? -eq 0 ]; then
    echo "SQL script executed successfully."
else
    echo "Error executing the SQL script."
    exit 1
fi
