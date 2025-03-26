INSERT INTO customers (first_name, last_name, phone, email, street, city, state, zip_code)
VALUES ('Anna', 'Nguyen', NULL, 'ANna.NGUyen@hotmail.com', '26 Pin Oak Lane', 'East Meadow', 'ny', '11554');

-- Kiểm tra kết quả
SELECT first_name, last_name, phone, email, street, city, [state], zip_code
FROM customers
WHERE customer_id = (SELECT MAX(customer_id) FROM customers);