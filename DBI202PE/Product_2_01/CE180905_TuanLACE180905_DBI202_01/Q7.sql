SELECT p.ProductID, 
       p.ModelID, 
	   p.Name AS ProductName, 
	   SUM(i.Quantity) AS Sum_Quantity
FROM Product p
JOIN ProductInventory i ON i.ProductID = p.ProductID
GROUP BY p.ProductID, p.ModelID, p.Name
HAVING p.ModelID IS NOT NULL AND SUM(i.Quantity) > 920
ORDER BY SUM(i.Quantity) ASC