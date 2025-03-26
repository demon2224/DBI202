Select d.department_id, d.department_name, AVG(e.salary) As [avg_salary]
From departments d
join employees e on e.department_id = d.department_id
Group by d.department_id, d.department_name
Having AVG(e.salary) < (
	Select Avg(ee.salary)
	From employees ee
)