SELECT o.Id AS OrderId, o.TotalAmount, CONCAT(c.Firstname, c.LastName) AS Fullname, c.Country
FROM Customer c
JOIN [Order] o ON o.CustomerId = c.Id
WHERE o.TotalAmount > 10000
ORDER BY o.TotalAmount