CREATE TRIGGER Auto_fill_phone
ON Customer
AFTER INSERT, UPDATE
AS
BEGIN
    -- Update the Phone column for newly inserted or updated rows where Phone is null
    UPDATE Customer
    SET Phone = '(1) 135-9999'
    WHERE Id IN (SELECT Id FROM inserted)
    AND Phone IS NULL;
END;

/*	SET IDENTITY_INSERT Customer ON;
INSERT INTO Customer (Id,FirstName,LastName,City,Country,Phone)VALUES(102,'Maria','Anders','Berlin','Germany',null)
SET IDENTITY_INSERT Customer OFF;
select * from Customer
where id = 102 */