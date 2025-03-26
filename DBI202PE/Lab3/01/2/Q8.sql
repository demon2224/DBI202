CREATE PROCEDURE Create_an_invoice
    @OrderId INT
AS
BEGIN
    SELECT 
        P.ProductName,
        OI.Quantity,
        OI.UnitPrice,
        (OI.Quantity * OI.UnitPrice) AS Price
    FROM 
        OrderItem OI
    INNER JOIN 
        Product P ON OI.ProductId = P.Id
    WHERE 
        OI.OrderId = @OrderId
    ORDER BY 
        P.ProductName;
END;