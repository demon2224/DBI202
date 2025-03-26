CREATE FUNCTION dbo.funcate (@cateid INT)
RETURNS INT
AS
BEGIN
    DECLARE @count INT;

    SELECT @count = COUNT(*)
    FROM products
    WHERE category_id = @cateid;

    RETURN @count;
END;

/*declare @cateid int = 6;
declare @number int = (select dbo.funcate (@cateid))
select  @cateid as CategoryID, @number as NumberOfProducts;*/
