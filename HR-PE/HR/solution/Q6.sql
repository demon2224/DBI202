Select e.employee_id, (e.first_name + ', ' + e.last_name) As [full_name], j.job_title, e.hire_date, (Year(getDate()) - Year(e.hire_date)) As [seniority]
From employees e
Join jobs j on e.job_id = j.job_id
Where (Year(getDate()) - Year(e.hire_date)) > 32
Order by [seniority] Desc