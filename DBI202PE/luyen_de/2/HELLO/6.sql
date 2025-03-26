SELECT DISTINCT s.name
FROM Staffs s
JOIN workFor w ON s.staffID = w.staffID
JOIN Events e ON w.eventID = e.eventID
JOIN Locations l ON e.locationID = l.locationID
WHERE l.Name = 'Convention Center'
ORDER BY s.name;