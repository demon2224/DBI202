SELECT 
    c.category_id,
    c.category_name,
    COUNT(p.product_id) AS [Number of Products]
FROM 
    categories c
LEFT JOIN 
    products p ON c.category_id = p.category_id
GROUP BY 
    c.category_id,
    c.category_name
HAVING 
    COUNT(p.product_id) >= 30
ORDER BY 
    COUNT(p.product_id);