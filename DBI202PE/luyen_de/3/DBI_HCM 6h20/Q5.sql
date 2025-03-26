SELECT 
    e.name AS EventName,
    l.Name AS LocationName,
    s.name AS StaffName
FROM 
    Events e
JOIN 
    Locations l ON e.locationID = l.locationID
JOIN 
    workFor wf ON e.eventID = wf.eventID
JOIN 
    Staffs s ON wf.staffID = s.staffID
ORDER BY 
    e.eventID, s.name;
