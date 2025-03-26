SELECT TOP 1 l.Name
FROM Events e
JOIN Locations l ON e.locationID = l.locationID
GROUP BY l.Name
ORDER BY COUNT(e.eventID) DESC;
