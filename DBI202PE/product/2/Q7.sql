WITH RankedProducts AS (
    SELECT 
        pi.LocationID,
        l.Name AS LocationName,
        pi.ProductID,
        p.Name AS ProductName,
        pi.Quantity,
        RANK() OVER (PARTITION BY pi.LocationID ORDER BY pi.Quantity DESC) AS QuantityRank
    FROM ProductInventory pi
    JOIN Product p ON pi.ProductID = p.ProductID
    JOIN Location l ON pi.LocationID = l.LocationID
)
SELECT 
    LocationID,
    LocationName,
    ProductID,
    ProductName,
    Quantity
FROM RankedProducts
WHERE QuantityRank = 1
ORDER BY LocationName ASC, ProductName DESC;