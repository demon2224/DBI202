SELECT TOP 10
    P.Id AS ProductId,
    P.ProductName,
    SUM(OI.UnitPrice * OI.Quantity) AS Revenue
FROM 
    OrderItem OI
INNER JOIN 
    [Order] O ON OI.OrderId = O.Id
INNER JOIN 
    Product P ON OI.ProductId = P.Id
WHERE 
    YEAR(O.OrderDate) = 2013
GROUP BY 
    P.Id, P.ProductName
ORDER BY 
    Revenue DESC;