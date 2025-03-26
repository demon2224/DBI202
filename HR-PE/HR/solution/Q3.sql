Select Distinct c.country_name
From countries c
left Join locations l on c.country_id = l.country_id
left Join departments d on d.location_id = l.location_id
Where d.department_id is null