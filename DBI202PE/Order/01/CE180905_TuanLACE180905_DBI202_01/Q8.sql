CREATE PROCEDURE proccate
    @cateid INT,
    @number INT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Đếm số lượng sản phẩm trong danh mục được chỉ định
    SELECT @number = COUNT(p.product_id)
    FROM products p
    WHERE p.category_id = @cateid;
END;
GO
/*DECLARE @cateid INT = 6;
DECLARE @number INT;
EXEC proccate @cateid, @number OUTPUT;
SELECT @cateid AS CategoryID, @number AS NumberOfProducts;*/