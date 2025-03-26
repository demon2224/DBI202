SELECT 
    e.eventID, 
    e.name, 
    e.StartTime, 
    e.EndTime, 
    e.locationID
FROM 
    Events e
JOIN 
    workFor wf ON e.eventID = wf.eventID
GROUP BY 
    e.eventID, e.name, e.StartTime, e.EndTime, e.locationID
HAVING 
    COUNT(wf.staffID) > 1;
