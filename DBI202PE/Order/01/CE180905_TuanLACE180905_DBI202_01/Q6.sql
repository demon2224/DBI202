SELECT 
    p.product_id,
    p.product_name
FROM 
    products p
JOIN 
    brands b ON p.brand_id = b.brand_id
JOIN 
    categories c ON p.category_id = c.category_id
WHERE 
    b.brand_name = 'Haro'
    AND c.category_name IN ('Mountain Bikes', 'Road Bikes');