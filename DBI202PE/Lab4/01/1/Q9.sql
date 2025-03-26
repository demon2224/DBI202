CREATE PROCEDURE CountPro
    @Gender CHAR(1),
    @number INT OUTPUT
AS
BEGIN
    -- Count the number of employees with the specified gender
    SELECT @number = COUNT(*)
    FROM EMPLOYEE
    WHERE Sex = @Gender;
END;