Select d.department_name, Count(e.employee_id) As [number_of_employee]
From employees e
join departments d on e.department_id = d.department_id
Group by d.department_name
Order by Count(e.employee_id) desc