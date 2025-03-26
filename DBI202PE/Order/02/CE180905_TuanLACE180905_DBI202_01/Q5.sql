SELECT DISTINCT
    c.customer_id,
    c.first_name,
    c.last_name,
    c.street,
    c.city
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE oi.list_price = (SELECT MIN(list_price) FROM order_items)
ORDER BY c.customer_id;