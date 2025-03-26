CREATE OR ALTER Trigger Auto_fill_fax
ON Supplier
FOR INSERT, UPDATE
AS
BEGIN 
	UPDATE Supplier
	SET Fax = s.Phone
	FROM Supplier s
	JOIN INSERTED i ON s.Id = i.Id
	WHERE s.Fax IS NULL
END;
