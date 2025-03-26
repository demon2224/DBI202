WITH SupplierProductCount AS (
    SELECT 
        S.Id AS SupplierId,
        S.CompanyName,
        S.ContactName,
        S.City,
        S.Country,
        S.Phone,
        COUNT(P.Id) AS ProductCount
    FROM 
        Supplier S
    INNER JOIN 
        Product P ON S.Id = P.SupplierId
    GROUP BY 
        S.Id, S.CompanyName, S.ContactName, S.City, S.Country, S.Phone
)
SELECT 
    SupplierId,
    CompanyName,
    ContactName,
    City,
    Country,
    Phone
FROM 
    SupplierProductCount
WHERE 
    ProductCount = (SELECT MAX(ProductCount) FROM SupplierProductCount);