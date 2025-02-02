-- Use the provided database (this will be passed as an argument when executing the script)
USE DATABASE;

-- Insert multiple rows into the customers table
INSERT INTO customers (customer_id, customer_name, email, address)
VALUES 
    (2, 'Blessing Malik', 'bmalik@sandtech.com', '124 Happiness Ave.'),
    (3, 'Obed Ehoneah', 'eobed@sandtech.com', '125 Happiness Ave.'),
    (4, 'Nehemial Kamolu', 'nkamolu@sandtech.com', '126 Happiness Ave.');

-- Ensure the customer with customer_id=2 is inserted
SELECT * FROM customers WHERE customer_id = 2;

-- Ensure the customer with customer_id=3 is inserted
SELECT * FROM customers WHERE customer_id = 3;

-- Ensure the customer with customer_id=4 is inserted
SELECT * FROM customers WHERE customer_id = 4;
