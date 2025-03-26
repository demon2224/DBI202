WITH LocationProductCounts AS (
    SELECT 
        l.LocationID,
        l.Name AS LocationName,
        COUNT(DISTINCT pi.ProductID) AS NumberOfProducts
    FROM Location l
    LEFT JOIN ProductInventory pi ON l.LocationID = pi.LocationID
    GROUP BY l.LocationID, l.Name
)
SELECT 
    LocationID,
    LocationName,
    NumberOfProducts
FROM LocationProductCounts
WHERE NumberOfProducts = (SELECT MIN(NumberOfProducts) FROM LocationProductCounts);