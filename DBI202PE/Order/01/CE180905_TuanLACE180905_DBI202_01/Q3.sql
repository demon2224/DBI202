SELECT 
    s.staff_id,
    CONCAT(s.first_name, ' ', s.last_name) AS full_name
FROM 
    Staffs s
JOIN 
    Stores st ON s.store_id = st.store_id
WHERE 
    st.city = 'Santa Cruz';