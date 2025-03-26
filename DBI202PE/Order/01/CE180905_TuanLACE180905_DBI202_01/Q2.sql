SELECT 
    product_id,
    product_name,
    list_price
FROM 
    Products
WHERE 
    model_year = 2019
ORDER BY 
    list_price DESC;