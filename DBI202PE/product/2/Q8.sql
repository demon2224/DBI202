CREATE PROCEDURE proc_product_model
    @modelID INT,
    @numberOfProducts INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

    -- Đếm số lượng sản phẩm khác nhau (distinct) thuộc model được chỉ định
    SELECT @numberOfProducts = COUNT(DISTINCT ProductID)
    FROM Product
    WHERE ModelID = @modelID;
END;