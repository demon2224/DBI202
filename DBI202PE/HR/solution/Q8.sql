create or alter  function func1 (@did int)
returns int
as 
begin
	declare @num int
	select @num = count(employee_id) from employees
	where department_id = @did
	return @num
end

--SELECT dbo.func1(9)