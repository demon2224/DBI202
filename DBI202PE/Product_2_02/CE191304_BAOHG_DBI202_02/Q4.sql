SELECT p.Id as ProductId, p.ProductName, SUM(o.Quantity) AS Quantity
From Product p
JOIN OrderItem o ON o.ProductId = p.Id
JOIN [Order] d ON d.Id = o.OrderId
WHERE MONTH(d.OrderDate) = 2
GROUP BY p.Id, p.ProductName
HAVING SUM(o.Quantity) >= 150
Order by SUM(o.Quantity)