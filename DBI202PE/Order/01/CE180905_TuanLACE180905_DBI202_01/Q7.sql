SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    o.order_date
FROM 
    customers c
JOIN 
    orders o ON c.customer_id = o.customer_id
JOIN 
    order_items oi ON o.order_id = oi.order_id
JOIN 
    products p ON oi.product_id = p.product_id
WHERE 
    p.product_name LIKE '%Plus%'
    AND o.order_date BETWEEN '2018-04-01' AND '2018-04-30'
ORDER BY 
    c.customer_id;