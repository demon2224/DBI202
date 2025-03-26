Select e.employee_id, e.first_name, e.last_name, e.salary, j.job_title
From employees e
Join jobs j on e.job_id = j.job_id
where e.manager_id = (
	Select employee_id
	From employees
	Where first_name like 'Nancy' And last_name like 'Greenberg'
)