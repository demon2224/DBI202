CREATE PROCEDURE CountPro
(@color nvarchar(15), @numberOfProducts int output)
AS
SELECT @numberOfProducts = COUNT(DISTINCT(ProductID))
FROM Product
WHERE Color = @Color

