create or alter trigger trig1 on Employees
for insert
as
begin 
	declare @fn varchar(20),
			@ln varchar(25),
			@em varchar(100),
			@pn varchar(20),
			@hd date,
			@ji int,
			@sa decimal(8,2),
			@mi int,
			@di int

	select @fn = first_name, 
		@ln = last_name,
		@em = email, 
		@pn = phone_number, 
		@hd = hire_date, 
		@ji = job_id, 
		@sa = salary, 
		@mi = manager_id, 
		@di = department_id
	from inserted

	insert into employees (first_name, last_name,email, phone_number, hire_date, job_id, salary, manager_id, department_id)
	values(@fn,upper(@ln),@em,@pn,@hd,@ji,@sa,@mi,@di)
end

INSERT INTO employees (first_name, last_name,email, phone_number, hire_date, job_id, salary, manager_id, department_id)
VALUES('Van An', 'nguyen', 'annv12@fpt.edu.vn', '0123456789', '1/1/2022',1,10000,100,1);

SELECT first_name, last_name, email 
FROM employees e 
WHERE e.employee_id = (SELECT max(employee_id) FROM employees)