SELECT 
    o.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.order_date > '2018-08-08';