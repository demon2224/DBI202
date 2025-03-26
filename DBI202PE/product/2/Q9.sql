CREATE TRIGGER tr_insert_Product
ON Product
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Hiển thị thông tin ProductID, ProductName, ModelID, ModelName của các sản phẩm vừa được chèn
    SELECT 
        i.ProductID,
        i.Name AS ProductName,
        i.ModelID,
        pm.Name AS ModelName
    FROM inserted i
    JOIN ProductModel pm ON i.ModelID = pm.ModelID;
END;