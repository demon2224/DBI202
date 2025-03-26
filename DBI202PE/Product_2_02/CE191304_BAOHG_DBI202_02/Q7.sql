SELECT p.SupplierId, s.CompanyName, s.ContactName, s.City, s.Country, s.Phone
FROM Supplier s
JOIN Product p ON p.SupplierId = s.Id
GROUP BY p.SupplierId,  s.CompanyName, s.ContactName, s.City, s.Country, s.Phone
HAVING COUNT(p.Id) = (
SELECT MAX(pCount) 
FROM (SELECT COUNT(p1.Id) as pCount 
FROM Product p1
GROUP BY p1.SupplierId
) AS mCount)
ORDER BY SupplierId ASC