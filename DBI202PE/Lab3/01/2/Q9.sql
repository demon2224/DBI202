CREATE TRIGGER Auto_fill_fax
ON Supplier
AFTER INSERT, UPDATE
AS
BEGIN
    -- Update the Fax column for newly inserted or updated rows where Fax is null
    UPDATE Supplier
    SET Fax = Phone
    WHERE Id IN (SELECT Id FROM inserted)
    AND Fax IS NULL;
END;