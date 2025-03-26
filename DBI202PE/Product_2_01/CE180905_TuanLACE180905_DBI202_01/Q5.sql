SELECT ProductID, Name AS ProductName, Price, SellStartDate
FROM Product
WHERE Price < 5 AND YEAR(SellStartDate) = 2003
ORDER BY Price ASC