SELECT 
    p.product_id,
    p.product_name,
    p.list_price,
    c.category_name
FROM products p
JOIN categories c ON p.category_id = c.category_id
JOIN brands b ON p.brand_id = b.brand_id
WHERE c.category_name = 'Mountain Bikes'
AND b.brand_name IN ('Haro', 'Ritchey');