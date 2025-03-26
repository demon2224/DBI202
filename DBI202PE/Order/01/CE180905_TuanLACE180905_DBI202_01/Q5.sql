WITH MaxPriceCTE AS (
    SELECT MAX(list_price) AS max_price
    FROM products
)
SELECT DISTINCT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.street,
    c.city
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
CROSS JOIN 
    MaxPriceCTE m
WHERE 
    p.list_price = m.max_price
ORDER BY 
    c.customer_id;