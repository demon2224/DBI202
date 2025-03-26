SELECT p.ProductID,
	   p.Name,
	   p.Cost,
	   i.Quantity
FROM Product p
JOIN ProductInventory i ON i.ProductID = p.ProductID
WHERE Cost = 98.77 AND Quantity < 300