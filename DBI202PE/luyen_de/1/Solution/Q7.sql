CREATE TRIGGER tr_insert_SalesEmployees
ON dbo.SalesPerson
AFTER INSERT
AS
BEGIN
    -- Display the inserted rows
    SELECT 
        salesID,
        salesName,
        birthday,
        sex,
        salesAddress
    FROM 
        inserted;
END;