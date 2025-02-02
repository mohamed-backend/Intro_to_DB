-- Use the provided database (this will be passed as an argument when executing the script)
USE DATABASE;

-- Insert a single row into the customers table
INSERT INTO customers (customer_id, customer_name, email, address)
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');
