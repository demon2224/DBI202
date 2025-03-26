SELECT 
    e.eventID,
    e.name AS EventName,
    COUNT(w.staffID) AS TotalStaffAssigned
FROM Events e
LEFT JOIN workFor w ON e.eventID = w.eventID
GROUP BY e.eventID, e.name
ORDER BY e.eventID;