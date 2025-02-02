import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establishing the connection to MySQL server
        connection = mysql.connector.connect(
            host='localhost',  # Replace with your MySQL host if not local
            user='root',       # Replace with your MySQL username
            password='your_password'  # Replace with your MySQL password
        )

        if connection.is_connected():
            cursor = connection.cursor()
            # Create the database if it doesn't already exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        
    except Error as e:
        # Handle the error if connection or database creation fails
        print(f"Error: {e}")
    
    finally:
        # Close the cursor and connection
        if connection.is_connected():
            cursor.close()
            connection.close()

# Call the function to create the database
create_database()
