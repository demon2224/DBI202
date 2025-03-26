SELECT TOP 10 P.Id AS Productid, 
p.ProductName as Productname, SUM(o.UnitPrice * o.Quantity) as Revenue
FROM Product p
JOIN OrderItem o ON o.ProductId = p.Id 
JOIN [Order] d ON o.OrderId = d.Id
WHERE YEAR(d.OrderDate) = 2013
GROUP BY P.Id, p.ProductName
ORDER BY Revenue DESC
