SELECT 
    pm.ModelID,
    pm.Name AS ModelName,
    COUNT(DISTINCT p.ProductID) AS NumberOfProducts
FROM ProductModel pm
LEFT JOIN Product p ON pm.ModelID = p.ModelID
WHERE pm.Name LIKE 'Mountain%' OR pm.Name LIKE 'ML Mountain%'
GROUP BY pm.ModelID, pm.Name
ORDER BY NumberOfProducts DESC, ModelName ASC;