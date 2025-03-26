SELECT ProductID, Name AS ProductName, Price AS Price_of_Product
FROM Product
WHERE Price = (
	SELECT MAX(Price)
	FROM Product
)