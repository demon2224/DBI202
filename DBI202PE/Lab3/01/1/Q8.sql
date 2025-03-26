CREATE PROCEDURE List_product
    @CustomerId INT
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
        [Order] O ON OI.OrderId = O.Id
    INNER JOIN 
        Product P ON OI.ProductId = P.Id
    WHERE 
        O.CustomerId = @CustomerId
    ORDER BY 
        P.ProductName;
END;

/*	exec List_product 13  */