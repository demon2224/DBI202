SELECT 
    ps.SubcategoryID,
    ps.Name AS SubcategoryName,
    ps.Category,
    COUNT(DISTINCT p.ProductID) AS NumberOfProducts
FROM ProductSubcategory ps
LEFT JOIN Product p ON ps.SubcategoryID = p.SubcategoryID
GROUP BY ps.SubcategoryID, ps.Name, ps.Category
ORDER BY 
    ps.Category ASC,
    NumberOfProducts DESC,
    SubcategoryName ASC;