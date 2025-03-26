WITH ProductQuantities AS (
    SELECT 
        p.ProductID,
        p.Name,
        SUM(pi.Quantity) AS TotalQuantity
    FROM Product p
    LEFT JOIN ProductInventory pi ON p.ProductID = pi.ProductID
    GROUP BY p.ProductID, p.Name
)
SELECT 
    ProductID,
    Name,
    TotalQuantity
FROM ProductQuantities
WHERE TotalQuantity = (SELECT MAX(TotalQuantity) FROM ProductQuantities);