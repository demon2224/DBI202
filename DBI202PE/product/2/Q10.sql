DELETE FROM ProductInventory
WHERE ProductID IN (
    SELECT ProductID
    FROM Product
    WHERE ModelID = 33
);