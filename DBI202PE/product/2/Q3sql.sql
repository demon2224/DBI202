SELECT ProductID, LocationID, Quantity
FROM ProductInventory
WHERE LocationID = 7 AND Quantity > 250
ORDER BY Quantity DESC;