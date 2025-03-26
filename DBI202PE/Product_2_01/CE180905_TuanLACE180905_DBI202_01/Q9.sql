CREATE TRIGGER TriggerIns
ON Product
FOR INSERT
AS
BEGIN
	UPDATE Product
	SET Price = 100000.00
	FROM Product p
	JOIN INSERTED i ON p.ProductID = i.ProductID
	WHERE i.Price > 100000.00;
END
