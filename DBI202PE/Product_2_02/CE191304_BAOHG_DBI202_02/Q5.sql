SELECT c.FirstName, c.LastName, SUM(d.Quantity) AS TotalQuantity
FROM Customer c
JOIN [Order] o ON o.CustomerId = c.Id
JOIN OrderItem d ON d.OrderId = o.Id
WHERE d.ProductId = (
SELECT Id 
FROM Product
WHERE ProductName = 'Aniseed Syrup'
)
GROUP BY c.FirstName, c.LastName
ORDER BY c.FirstName