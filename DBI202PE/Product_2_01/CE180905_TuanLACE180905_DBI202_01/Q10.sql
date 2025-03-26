DELETE ProductCostHistory WHERE ProductID IN (
	SELECT ProductID
	FROM Product
	WHERE Name LIKE 'B%' OR Name LIKE 'b%'
)