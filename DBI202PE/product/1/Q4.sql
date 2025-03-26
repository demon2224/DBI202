SELECT 
    p.ProductID,
    p.Name AS ProductName,
    p.Price,
    pm.Name AS ModelName,
    ps.Name AS SubCategoryName,
    ps.Category
FROM Product p
LEFT JOIN ProductModel pm ON p.ModelID = pm.ModelID
LEFT JOIN ProductSubcategory ps ON p.SubcategoryID = ps.SubcategoryID
WHERE p.Price < 100 AND p.Color = 'Black'
ORDER BY p.ProductID;